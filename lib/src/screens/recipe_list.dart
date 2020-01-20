import 'package:flutter/material.dart';
import '../blocs/recipe_provider.dart';
import '../models/recipe_model.dart';

class RecipeList extends StatelessWidget {
  const RecipeList();

  @override
  Widget build(BuildContext context) {
    final RecipeBloc recipeBloc = RecipeProvider.of(context);
    recipeBloc.fetchRecipes();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish List'),
      ),
      body: buildList(recipeBloc),
    );
  }

  Widget buildList(RecipeBloc bloc) {
    return StreamBuilder(
      stream: bloc.recipes,
      builder: (BuildContext context,
          AsyncSnapshot<Map<int, RecipeModel>> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
            if (index.isOdd) {
              return const Divider();
            } else {
              return Center(
                child: Text(snapshot.data[index].name),
              );
            }
          },
        );
      },
    );
  }
}
