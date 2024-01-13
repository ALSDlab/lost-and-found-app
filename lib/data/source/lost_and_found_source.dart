import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/lost_and_found_dto.dart';

class SourceApi {

  Future<LostAndFoundDto> fetchAllLostItems(
      int startItemNumber, int endItemNumber) async {
    final response = await http.get(Uri.parse(
        'http://openapi.seoul.go.kr:8088/65475a516573736438305972416166/json/lostArticleInfo/$startItemNumber/$endItemNumber/'));

    return LostAndFoundDto.fromJson(jsonDecode(response.body));
  }
}
