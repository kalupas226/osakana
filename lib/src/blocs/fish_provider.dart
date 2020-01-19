import 'package:flutter/material.dart';
import 'fish_bloc.dart';
export '../blocs/fish_bloc.dart';

class FishProvider extends InheritedWidget {
  FishBloc bloc;

  FishProvider({Key key, Widget child})
      : bloc = FishBloc(),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static FishBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(FishProvider)
            as FishProvider)
        .bloc;
  }
}
