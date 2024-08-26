import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';

class CurrentHistoryDetailEntity {
  final int id;
  final String name;
  final String description;
  final double price;
  final DateTime dateOfCompletion;
  final List<EmployeeEntity> employees;
  final String authorFullName;
  final String authorContactInfo;

  CurrentHistoryDetailEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.dateOfCompletion,
    required this.employees,
    required this.authorFullName,
    required this.authorContactInfo,
  });

  factory CurrentHistoryDetailEntity.initial() {
    return CurrentHistoryDetailEntity(
      id: 0,
      name: '',
      description: '',
      price: 0.0,
      dateOfCompletion: DateTime.now(),
      employees: [],
      authorFullName: '',
      authorContactInfo: '',
    );
  }
}
