import 'package:rxdart/rxdart.dart';
import '../models/recipe_model.dart';
import '../resources/repository.dart';

class RecipeBloc {
  final Repository _repository = Repository();
  final PublishSubject<Map<int, RecipeModel>> _recipes =
      PublishSubject<Map<int, RecipeModel>>();

  Observable<Map<int, RecipeModel>> get recipes => _recipes.stream;

  void fetchRecipes() async {
    final Map<int, RecipeModel> recipes = await _repository.fetchRecipes();
    _recipes.sink.add(recipes);
  }

  void dispose() {
    _recipes.close();
  }
}
