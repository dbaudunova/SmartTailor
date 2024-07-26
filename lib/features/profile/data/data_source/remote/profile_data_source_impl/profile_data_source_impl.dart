import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  final HttpClient _client;

  ProfileDataSourceImpl(
    this._client,
  );

  @override
  Future<void> login({String? email}) async {
    print(email);
    try {
      print(email);
      final response = await _client.post(HttpPaths.login,
          queryParameters: {
            'email': email,
          },
          isSecure: false);
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Пин код не верный, код статуса: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      final response = await _client.post(
        HttpPaths.signOut,
      );
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Пин код не верный, код статуса: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<ProfileModel> getProfileInfo() async {
    try {
      final response = await _client.get(HttpPaths.getProfile);
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Что-то пошло не так: ${response.statusCode}',
        );
      }
      final data = response.data;
      final profile = ProfileModel.fromJson(data);
      return profile;
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }
}
