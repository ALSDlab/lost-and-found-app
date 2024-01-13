class LostAndFoundModel {
  String id;
  String getBackOrNot;
  String lostDate;
  String getDate;
  String getterComment;
  String takerPosition;
  String taker;
  String name;
  String category;
  String getter;
  String checkedCount;

//<editor-fold desc="Data Methods">
  LostAndFoundModel({
    required this.id,
    required this.getBackOrNot,
    required this.lostDate,
    required this.getDate,
    required this.getterComment,
    required this.takerPosition,
    required this.taker,
    required this.name,
    required this.category,
    required this.getter,
    required this.checkedCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LostAndFoundModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          getBackOrNot == other.getBackOrNot &&
          lostDate == other.lostDate &&
          getDate == other.getDate &&
          getterComment == other.getterComment &&
          takerPosition == other.takerPosition &&
          taker == other.taker &&
          name == other.name &&
          category == other.category &&
          getter == other.getter &&
          checkedCount == other.checkedCount);

  @override
  int get hashCode =>
      id.hashCode ^
      getBackOrNot.hashCode ^
      lostDate.hashCode ^
      getDate.hashCode ^
      getterComment.hashCode ^
      takerPosition.hashCode ^
      taker.hashCode ^
      name.hashCode ^
      category.hashCode ^
      getter.hashCode ^
      checkedCount.hashCode;

  @override
  String toString() {
    return 'LostAndFoundModel{ iD: $id, getBackOrNot: $getBackOrNot, lostDate: $lostDate, getDate: $getDate, getterComment: $getterComment, takerPosition: $takerPosition, taker: $taker, name: $name, category: $category, getter: $getter, checkedCount: $checkedCount,}';
  }

  LostAndFoundModel copyWith({
    String? iD,
    String? getBackOrNot,
    String? lostDate,
    String? getDate,
    String? getterComment,
    String? takerPosition,
    String? taker,
    String? name,
    String? category,
    String? getter,
    String? checkedCount,
  }) {
    return LostAndFoundModel(
      id: iD ?? this.id,
      getBackOrNot: getBackOrNot ?? this.getBackOrNot,
      lostDate: lostDate ?? this.lostDate,
      getDate: getDate ?? this.getDate,
      getterComment: getterComment ?? this.getterComment,
      takerPosition: takerPosition ?? this.takerPosition,
      taker: taker ?? this.taker,
      name: name ?? this.name,
      category: category ?? this.category,
      getter: getter ?? this.getter,
      checkedCount: checkedCount ?? this.checkedCount,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'iD': id,
      'getBackOrNot': getBackOrNot,
      'lostDate': lostDate,
      'getDate': getDate,
      'getterComment': getterComment,
      'takerPosition': takerPosition,
      'taker': taker,
      'name': name,
      'category': category,
      'getter': getter,
      'checkedCount': checkedCount,
    };
  }

  factory LostAndFoundModel.fromJson(Map<String, dynamic> map) {
    return LostAndFoundModel(
      id: map['iD'] as String,
      getBackOrNot: map['getBackOrNot'] as String,
      lostDate: map['lostDate'] as String,
      getDate: map['getDate'] as String,
      getterComment: map['getterComment'] as String,
      takerPosition: map['takerPosition'] as String,
      taker: map['taker'] as String,
      name: map['name'] as String,
      category: map['category'] as String,
      getter: map['getter'] as String,
      checkedCount: map['checkedCount'] as String,
    );
  }

//</editor-fold>
}