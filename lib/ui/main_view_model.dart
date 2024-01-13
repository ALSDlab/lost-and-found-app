import '../data/model/lost_and_found_model.dart';
import '../data/repository/lost_and_found_repository_impl.dart';

class MainViewModel{
  int startItemNumber = 1;
  int endItemNumber = 1000;
  List<LostAndFoundModel> lostItems = [];
  List<LostAndFoundModel> displayedItems = [];

  final _repository = LostAndFoundRepositoryImpl();


  Future<void> searchItems() async{
    int startItemNumber = 1;
    int endItemNumber = 1000;
    lostItems = await _repository.getLostAndFoundModels(startItemNumber, endItemNumber);
    displayedItems = lostItems;
    // print(displayedItems.length);

  }

  void filterItems(String keyword) {
    // 키워드에 따라 리스트 필터링
    displayedItems = lostItems
        .where((item) =>
        item.name.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    print(displayedItems.length);
  }
}