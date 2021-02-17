import 'package:dio/dio.dart';
import 'package:flutter_app_riverpod/models/user_info.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  static UserApiClient create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return UserApiClient(dio);
  }

  @GET("/posts")
  Future<List<UserInfo>> getUsers();
}
