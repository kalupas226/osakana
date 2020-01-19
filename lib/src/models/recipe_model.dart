class RecipeModel {
  RecipeModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        hiraganaName = parsedJson['hiraganaName'],
        katakanaName = parsedJson['katakanaName'],
        cookMethod = parsedJson['cookMethod'],
        ingredient = parsedJson['ingredient'],
        instruction = parsedJson['instruction'],
        ingredientsDetail = parsedJson['ingredientsDetail'],
        url = parsedJson['url'],
        imageUrl = parsedJson['imageUrl'],
        difficulty = parsedJson['difficulty'],
        attributionNameUri = parsedJson['attributionNameUri'],
        attributionName = parsedJson['attributionName'],
        relatedFish = parsedJson['relatedFish'],
        phrase = parsedJson['phrase'];

  final int id;
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
  final String phrase;
}
