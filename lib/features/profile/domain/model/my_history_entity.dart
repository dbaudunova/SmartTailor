class HistoryEntity {
  final int? id;
  final String? name;
  final double? price;
  final String? date;
  final String? status;

  HistoryEntity({
    this.id,
    this.date,
    this.status,
    this.name,
    this.price,
  });
}

class MyHistoryEntity {
  final List<HistoryEntity>? advertisement;
  final bool? isLast;
  final int? totalCount;

  MyHistoryEntity({
    this.advertisement,
    this.isLast,
    this.totalCount,
  });
}
