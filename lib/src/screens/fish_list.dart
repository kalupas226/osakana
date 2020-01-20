import 'package:flutter/material.dart';
import '../blocs/fish_provider.dart';
import '../components/fish_cell.dart';
import '../models/fish_model.dart';

class FishList extends StatelessWidget {
  const FishList();

  @override
  Widget build(BuildContext context) {
    final FishBloc fishBloc = FishProvider.of(context);
    fishBloc.fetchFishes();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish List'),
      ),
      body: buildList(fishBloc),
    );
  }

  Widget buildList(FishBloc bloc) {
    return StreamBuilder(
      stream: bloc.fishes,
      builder:
          (BuildContext context, AsyncSnapshot<Map<int, FishModel>> snapshot) {
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
              return FishCell(fish: snapshot.data[index]);
            }
          },
        );
      },
    );
  }
}
