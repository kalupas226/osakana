import 'package:flutter/material.dart';
import 'recipe_bloc.dart';
export '../blocs/recipe_bloc.dart';

class RecipeProvider extends InheritedWidget {
  RecipeBloc bloc;

  RecipeProvider({Key key, Widget child})
      : bloc = RecipeBloc(),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static RecipeBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(RecipeProvider)
            as RecipeProvider)
        .bloc;
  }
}
