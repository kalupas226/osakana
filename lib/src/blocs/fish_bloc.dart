import 'package:rxdart/rxdart.dart';
import '../models/fish_model.dart';
import '../resources/repository.dart';

class FishBloc {
  final Repository _repository = Repository();
  final PublishSubject<Map<int, FishModel>> _fishes =
      PublishSubject<Map<int, FishModel>>();

  Observable<Map<int, FishModel>> get fishes => _fishes.stream;

  void fetchFishes() async {
    final Map<int, FishModel> fishes = await _repository.fetchFishes();
    _fishes.sink.add(fishes);
  }

  void dispose() {
    _fishes.close();
  }
}
