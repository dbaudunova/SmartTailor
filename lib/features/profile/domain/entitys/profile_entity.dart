class ProfileEntity {
  final int? id;
  final String? imagePath;
  final String? name;
  final String? surname;
  final String? patronymic;
  final String? email;
  final String? phoneNumber;
  final bool? hasSubscription;

  ProfileEntity({
    this.id,
    this.imagePath,
    this.name,
    this.surname,
    this.patronymic,
    this.email,
    this.phoneNumber,
    this.hasSubscription,
  });
}
