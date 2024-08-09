class PositionEntity {
  final String? positionName;
  final List<String>? accessRights;

  PositionEntity({
    required this.positionName,
    required this.accessRights,
  });

  factory PositionEntity.initial() {
    return PositionEntity(
      accessRights: [],
      positionName: '',
    );
  }
}
