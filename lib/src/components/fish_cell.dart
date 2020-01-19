import 'package:flutter/material.dart';
import '../components/cell_image.dart';
import '../models/fish_model.dart';

class FishCell extends StatelessWidget {
  const FishCell({
    Key key,
    @required this.fish,
  })  : assert(fish != null),
        super(key: key);

  final FishModel fish;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            flex: 2,
            child: CellImage(),
          ),
          Expanded(
            flex: 3,
            child: fishInfo(fish.name, fish.phrase),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget fishInfo(String name, String phrase) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            phrase,
          ),
        ),
      ],
    );
  }
}
