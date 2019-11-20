import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List'),
      ),
      body: Center(
        child: const Text('recipe'),
      ),
    );
  }
}
