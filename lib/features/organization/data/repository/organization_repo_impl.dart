// import 'dart:io';

// import 'package:injectable/injectable.dart';
// import 'package:neobis_smart_tailor/features/organization/data/data_source/organization_data_source.dart';
// import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
// import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

// @Injectable(as: OrganizationRepo)
// class OrganizationRepoImpl implements OrganizationRepo {
//   final OrganizationDataSource _dataSource;

//   OrganizationRepoImpl(
//     this._dataSource,
//   );

//   @override
//   Future<void> getProfile() async {
//     await _dataSource.getProfile();
//   }

//   // @override
//   // Future<void> createOrganization({required CreateOrganizationModel model, required File image}) async {
//   //   await _dataSource.createOrganization(image: image, model: model);
//   // }
// }
