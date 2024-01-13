import '../model/lost_and_found_model.dart';

abstract interface class LostAndFoundRepository {
  Future<List<LostAndFoundModel>> getLostAndFoundModels (int startItemNumber, int endItemNumber);
}

