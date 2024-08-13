class PurchasesEntity {
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final String? dateOfExecution;
  final String? imageUrl;
  final String? authorFullName;
  final String? authorImageUrl;

  PurchasesEntity({
    this.id,
    this.authorFullName,
    this.authorImageUrl,
    this.dateOfExecution,
    this.description,
    this.imageUrl,
    this.name,
    this.price,
  });
}

class PurchasesListEntity {
  final List<PurchasesEntity>? advertisement;
  final bool? isLast;
  final int? totalCount;

  PurchasesListEntity({
    this.advertisement,
    this.isLast,
    this.totalCount,
  });
}
