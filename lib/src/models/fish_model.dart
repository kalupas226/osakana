class FishModel {
  FishModel.fromJson(Map<String, dynamic> parsedJson)
      : name = parsedJson['name']['value'],
        hiraganaName = parsedJson['hname']['value'],
        kanziName = parsedJson['kname']['value'],
        areaName = parsedJson['areaName']['value'],
        phrase = parsedJson['phrase']['value'],
        description = parsedJson['description']['value'],
        category = parsedJson['category']['value'],
        length = parsedJson['length']['value'],
        area = parsedJson['area']['value'],
        areaDetail = parsedJson['areaMore']['value'],
        catchSeason = parsedJson['catchSeason']['value'],
        catchSeasonDetail = parsedJson['catchSeasonMore']['value'],
        rare = parsedJson['rare']['value'],
        url = parsedJson['url']['value'],
        imageUrl = parsedJson['img']['value'],
        aname = parsedJson['aname']['value'];

  final String name;
  final String hiraganaName;
  final String kanziName;
  final String areaName;
  final String phrase;
  final String description;
  final String category;
  final String length;
  final String area;
  final String areaDetail;
  final String catchSeason;
  final String catchSeasonDetail;
  final String rare;
  final String url;
  final String imageUrl;
  final String aname; // 何なのか不明
}
