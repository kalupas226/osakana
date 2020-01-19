class FishModel {
  FishModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        hiraganaName = parsedJson['hiraganaName'],
        kanziName = parsedJson['kanziName'],
        areaName = parsedJson['areaName'],
        phrase = parsedJson['phrase'],
        description = parsedJson['description'],
        category = parsedJson['category'],
        length = parsedJson['length'],
        area = parsedJson['area'],
        areaDetail = parsedJson['areaDetail'],
        catchSeason = parsedJson['catchSeason'],
        catchSeasonDetail = parsedJson['catchSeasonDetail'],
        rare = parsedJson['rare'],
        url = parsedJson['url'],
        imageUrl = parsedJson['imageUrl'],
        aname = parsedJson['aname'];

  final int id;
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
