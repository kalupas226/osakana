import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/fish_model.dart';

const String _root = 'http://lod.per.c.fun.ac.jp:8666/sparql/?query=';
const String _suffix = '&output=json';
const String _query = '''
            PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
            PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
            PREFIX foaf: <http://xmlns.com/foaf/0.1/>
            PREFIX schema: <http://schema.org/>
            PREFIX dcterms: <http://purl.org/dc/terms/>
            PREFIX dc: <http://purl.org/dc/elements/1.1/>
            PREFIX cc: <http://creativecommons.org/ns#>
            PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
            SELECT ?name ?hname ?kname ?areaName ?phrase ?description ?category ?length ?area ?areaMore ?catchSeason ?catchSeasonMore ?rare ?url ?img ?aname
            FROM <file:///var/lib/4store/fish.rdf>
            WHERE {
              ?s foaf:name ?name;
                 rdfs:label ?areaName;
                 schema:description ?description;
                 rdfs:comment ?phrase;
                 dcterms:abstract ?category;
                 dcterms:extent ?length;
                 dcterms:spatial ?area;
                 dc:description ?areaMore;
                 dcterms:date ?catchSeason;
                 rdf:subject ?catchSeasonMore;
                 dcterms:subject ?rare;
                 schema:url ?url;
                 foaf:img ?img.
              ?img cc:attributionName ?aname.
              OPTIONAL { ?s rdfs:label ?areaName }.
              OPTIONAL {
                ?s foaf:name ?kname.
                FILTER ( lang(?kname) = 'JA' )
              }.
              OPTIONAL {
                ?s foaf:name ?hname.
                FILTER ( lang(?hname) = 'JA-HIRA' )
              }.
              FILTER ( lang(?name) = 'JA-KANA' )
            }
            ORDER BY ?name xsd:int(?catchSeason) ?area
            ''';

class FishApiProvider {
  Client client = Client();

  Future<Map<int, FishModel>> fetchFishes() async {
    final response =
        await client.get(_root + Uri.encodeComponent(_query) + _suffix);
    final dynamic fishesJson =
        json.decode(utf8.decode(response.bodyBytes))['results']['bindings'];

    int fishId = 0;
    final Map<int, FishModel> fishes = <int, FishModel>{};

    for (dynamic fishJson in fishesJson) {
      final FishModel fish = FishModel.fromJson(fishJson);
      fishes[fishId] = fish;
      fishId++;
    }
    return fishes;
  }
}
