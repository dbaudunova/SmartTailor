class EmployeeEntity {
  final int? id;
  final String? fullName;
  final String? email;
  final List? orders;
  final String? position;

  EmployeeEntity({
    required this.id,
    required this.fullName,
    required this.email,
    required this.orders,
    required this.position,
  });

  factory EmployeeEntity.initial() {
    return EmployeeEntity(
      id: null,
      email: '',
      fullName: '',
      orders: [],
      position: '',
    );
  }
}
