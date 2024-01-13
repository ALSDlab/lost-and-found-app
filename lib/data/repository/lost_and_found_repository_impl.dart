import 'package:lost_and_found_app/data/mapper/lost_and_found_mapper.dart';
import 'package:lost_and_found_app/data/model/lost_and_found_model.dart';
import 'package:lost_and_found_app/data/repository/lost_and_found_repository.dart';

import '../source/lost_and_found_source.dart';

class LostAndFoundRepositoryImpl implements LostAndFoundRepository {
  // 시작 아이템 번호

  int itemsPerPage = 1000;
  int totalItemCount = 1;
  List<LostAndFoundModel> totalResult = [];
  final _api = SourceApi();

  @override
  Future<List<LostAndFoundModel>> getLostAndFoundModels(
      int startItemNumber, int endItemNumber) async {
// 반복해서 데이터 가져오기
    while (endItemNumber <= 1000) {
      final oneResult =
          await _api.fetchAllLostItems(startItemNumber, endItemNumber);

// Model로 변환하여 리스트에 추가
      totalItemCount =
          oneResult.lostArticleInfo!.listTotalCount!; // 전체 아이템 개수 확인

      oneResult.lostArticleInfo!.row!.forEach((e) {
        totalResult.add(e.toModel());
      });

// 다음 페이지의 시작 아이템 번호 계산
      startItemNumber += itemsPerPage;
      endItemNumber += itemsPerPage;
    }
    return totalResult;
  }
}
