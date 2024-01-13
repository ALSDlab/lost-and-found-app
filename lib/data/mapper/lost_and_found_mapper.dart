import 'package:lost_and_found_app/data/dto/lost_and_found_dto.dart';

import '../model/lost_and_found_model.dart';

extension DtoToModel on Row {
  LostAndFoundModel toModel() {
    return LostAndFoundModel(
      id: iD ?? '-',
      getBackOrNot: sTATUS ?? '-',
      lostDate: rEGDATE ?? '',
      getDate: gETDATE ?? '',
      getterComment: gETTHING ?? '',
      takerPosition: tAKEPLACE ?? '',
      taker: tAKEID ?? '',
      name: gETNAME ?? '',
      getter: gETPOSITION ?? '',
      category: cATE ?? '',
      checkedCount: rEADCNT ?? '',
    );
  }
}
