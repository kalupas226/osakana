import 'package:flutter/material.dart';
import '../blocs/fish_provider.dart';
import '../components/fish_cell.dart';

class FishList extends StatelessWidget {
  const FishList();

  @override
  Widget build(BuildContext context) {
    final fishBloc = FishProvider.of(context);
    fishBloc.fetchFishes();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish List'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) {
            return const Divider();
          } else {
            return FishCell(index: i);
          }
        },
      ),
    );
  }
}
