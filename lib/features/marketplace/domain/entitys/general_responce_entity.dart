import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';

class GeneralResponceEntity {
  final List<GeneralEntity> listEntitys;
  final bool? isLast;
  final int totalCount;

  GeneralResponceEntity({
    required this.totalCount,
    required this.listEntitys,
    required this.isLast,
  });
}
