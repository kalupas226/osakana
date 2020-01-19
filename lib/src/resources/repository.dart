import 'fish_api_provider.dart';
import '../models/fish_model.dart';

class Repository {
  Future<Map<int, FishModel>> fetchFishes() {
    return FishApiProvider().fetchFishes();
  }
}