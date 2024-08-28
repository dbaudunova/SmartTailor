class EmployeeDetailEntity {
  final int? id;
  final String? imagePath;
  final String? name;
  final String? surname;
  final String? patronymic;
  final String? email;
  final String? phoneNumber;
  final String? positionName;

  EmployeeDetailEntity(
      {required this.id,
      required this.email,
      required this.imagePath,
      required this.name,
      required this.patronymic,
      required this.phoneNumber,
      required this.positionName,
      required this.surname});

  factory EmployeeDetailEntity.initial() {
    return EmployeeDetailEntity(
      id: null,
      email: '',
      imagePath: '',
      name: '',
      patronymic: '',
      phoneNumber: '',
      positionName: '',
      surname: '',
    );
  }
}
