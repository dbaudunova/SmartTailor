import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart';

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
        var jsonList = response.data as List; // Cast to List<dynamic>
        var employees = jsonList
            .map((json) => EmployeeModel.fromJson(json)) // Ensure each item is a Map<String, dynamic>
            .toList();
        return employees;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<EmployeeDetailModel> getEmployeeDetail({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getEmployeeDetail + id.toString(),
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        var json = response.data;
        // ignore: avoid_dynamic_calls
        var employee = EmployeeDetailModel.fromJson(json);

        return employee;
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
