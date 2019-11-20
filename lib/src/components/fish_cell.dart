import 'package:flutter/material.dart';
import '../components/cell_image.dart';

class FishCell extends StatelessWidget {
  const FishCell();

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
            child: fishName(),
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

  Widget fishName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: const Text('アイナメ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          child: const Text('背面いっぱいに広がる一枚びれ'),
        ),
      ],
    );
  }
}
