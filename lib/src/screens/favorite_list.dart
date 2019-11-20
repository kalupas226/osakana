import 'package:flutter/material.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite List'),
      ),
      body: Center(
        child: const Text('favorite'),
      ),
    );
  }
}
