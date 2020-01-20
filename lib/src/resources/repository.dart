import '../models/fish_model.dart';
import '../models/recipe_model.dart';
import 'fish_api_provider.dart';
import 'recipe_api_provider.dart';

class Repository {
  Future<Map<int, FishModel>> fetchFishes() {
    return FishApiProvider().fetchFishes();
  }

  Future<Map<int, RecipeModel>> fetchRecipes() {
    return RecipeApiProvider().fetchRecipes();
  }
}