import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/_model/employee_model.dart';

@Injectable(as: EmployeeDataSource)
class OrganizationDataSourceImpl implements EmployeeDataSource {
  final HttpClient _client;

  OrganizationDataSourceImpl(
    this._client,
  );

  @override
  Future<List<EmployeeModel>> getAllEmployees() async {
    try {
      final response = await _client.get(
        HttpPaths.getAllEmployees,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        print(response.data);
        List<dynamic> jsonList = response.data;
        List<EmployeeModel> positions = jsonList.map((json) => EmployeeModel.fromJson(json)).toList();
        print(positions);

        return positions;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }
}
