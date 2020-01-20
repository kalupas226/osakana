class RecipeModel {
  RecipeModel.fromJson(Map<String, dynamic> parsedJson)
      : name = parsedJson['name'],
        hiraganaName = parsedJson['hname'],
        katakanaName = parsedJson['kname'],
        cookMethod = parsedJson['method'],
        ingredient = parsedJson['ingredient'].split(',', 0),
        instruction = parsedJson['instruction'].split(',', 0),
        ingredientsDetail = parsedJson['ingredientsinInstructions'].split(',', 0),
        url = parsedJson['url'],
        imageUrl = parsedJson['img'],
        difficulty = parsedJson['category'],
        attributionNameUri = parsedJson['attributionNameUri'],
        attributionName = parsedJson['attributionName'],
        relatedFish = parsedJson['seeAlsoName'],
        point = parsedJson['point'];

  final String name;
  final String hiraganaName;
  final String katakanaName;
  final String cookMethod;
  final List<String> ingredient;
  final List<String> instruction;
  final List<String> ingredientsDetail;
  final String url;
  final String imageUrl;
  final String difficulty;
  final String attributionNameUri;
  final String attributionName;
  final List<String> relatedFish;
  final String point;
}
