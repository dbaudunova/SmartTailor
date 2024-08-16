class PositionEntity {
  final String? positionName;
  final List<String>? accessRights;
  final String? weight;

  PositionEntity({
    required this.positionName,
    required this.accessRights,
    required this.weight,
  });

  factory PositionEntity.initial() {
    return PositionEntity(
      accessRights: [],
      positionName: '',
      weight: '',
    );
  }
}
