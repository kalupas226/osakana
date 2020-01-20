import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/recipe_model.dart';

const String _root = 'http://lod.per.c.fun.ac.jp:8666/sparql/?query=';
const String _suffix = '&output=json';
const String _query = '''
            PREFIX schema: <http://schema.org/>
            PREFIX dc: <http://purl.org/dc/elements/1.1/>
            PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
            PREFIX foaf: <http://xmlns.com/foaf/0.1/>
            PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
            PREFIX owl: <http://www.w3.org/2002/07/owl#>
            PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
            PREFIX cc: <http://creativecommons.org/ns#>
            PREFIX fish: <http://osakanabiyori.jp/property/>

            SELECT ?name ?hname ?kname ?method ?ingredient ?yield ?instruction ?ingredientsinInstructions ?img ?url ?category ?attributionNameUri ?attributionName ?seeAlsoName ?point

            FROM <file:///var/lib/4store/recipe2.rdf>
            FROM <file:///var/lib/4store/gyoren2.rdf>

            WHERE {
              ?s schema:name ?name;
                 schema:cookingMethod ?method;
                 schema:ingredients ?ingredient;
                 schema:recipeYield ?yield;
                 schema:recipeInstructions ?instruction;
                 schema:url ?url;
                 schema:recipeCategory ?category;
                 cc:attributionName ?attributionNameUri.
              ?attributionNameUri dc:title ?attributionName.
              ?s rdfs:seeAlso ?seeAlsoName.
              OPTIONAL{?s schema:image ?img}.
              OPTIONAL{?s fish:ingredientsinInstructions ?ingredientsinInstructions}.
              OPTIONAL{?s fish:point ?point}.
              OPTIONAL{
                ?s schema:name ?hname.
                FILTER ( lang(?hname) = "JA-HIRA" )
              }.
              OPTIONAL{
                ?s schema:name ?kname.
                FILTER ( lang(?kname) = "JA-KANA" )
              }.
              FILTER ( lang(?name) = "JA" )
            }

            ORDER BY ?name
            ''';

class RecipeApiProvider {
  Client client = Client();

  Future<Map<int, RecipeModel>> fetchRecipes() async {
    final response =
        await client.get(_root + Uri.encodeComponent(_query) + _suffix);
    final dynamic recipesJson =
        json.decode(utf8.decode(response.bodyBytes))['results']['bindings'];

    int recipeId = 0;
    final Map<int, RecipeModel> recipes = <int, RecipeModel>{};

    for (dynamic recipeJson in recipesJson) {
      final RecipeModel recipe = RecipeModel.fromJson(recipeJson);
      recipes[recipeId] = recipe;
      recipeId++;
    }
    return recipes;
  }
}
