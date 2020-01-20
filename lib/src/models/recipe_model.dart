class RecipeModel {
  RecipeModel.fromJson(Map<String, dynamic> parsedJson)
      : name = parsedJson['name']['value'],
        hiraganaName = parsedJson['hname']['value'],
        katakanaName = parsedJson['kname']['value'],
        cookMethod = parsedJson['method']['value'],
        ingredient = parsedJson['ingredient']['value'].split(','),
        instruction = parsedJson['instruction']['value'].split(','),
        ingredientsDetail = parsedJson['ingredientsinInstructions']['value'].split(','),
        url = parsedJson['url']['value'],
        imageUrl = parsedJson['img']['value'],
        difficulty = parsedJson['category']['value'],
        attributionNameUri = parsedJson['attributionNameUri']['value'],
        attributionName = parsedJson['attributionName']['value'],
        relatedFish = parsedJson['seeAlsoName']['value'].split(','),
        point = parsedJson['point']['value'];

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
