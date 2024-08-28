import 'package:neobis_smart_tailor/features/organization/data/models/order_status_enum.dart';

class CurrentDetailOrderEntity {
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final OrderStatus? status;
  final DateTime? dateOfExecution;
  final List<String>? images;
  final List<EmployeeForCurrentEntity>? employees;
  final String? authorFullName;
  final String? authorImage;
  final String? authorContactInfo;

  CurrentDetailOrderEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.status,
    required this.dateOfExecution,
    required this.images,
    required this.employees,
    required this.authorFullName,
    required this.authorImage,
    required this.authorContactInfo,
  });

  factory CurrentDetailOrderEntity.initial() {
    return CurrentDetailOrderEntity(
      id: null,
      name: '',
      description: '',
      price: 0.0,
      status: OrderStatus.waiting,
      dateOfExecution: null,
      images: [],
      employees: [],
      authorFullName: '',
      authorImage: '',
      authorContactInfo: '',
    );
  }
}

class EmployeeForCurrentEntity {
  final int? id;
  final String? fullName;
  final String? image;
  final String? position;

  EmployeeForCurrentEntity({
    required this.id,
    required this.fullName,
    required this.image,
    required this.position,
  });
}
