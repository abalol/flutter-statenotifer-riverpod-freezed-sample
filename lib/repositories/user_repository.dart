import 'package:flutter_app_riverpod/models/user_info.dart';

import 'api/user_api_client.dart';

class UserRepository {
  final _api = UserApiClient.create();

  Future<List<UserInfo>> getUsers() async {
    return await _api.getUsers();
  }
}
