import 'package:flutter_app_riverpod/repositories/user_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'user_state.dart';

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier(this.repository) : super(UserState()) {
    _getFlutterUsers();
  }

  final UserRepository repository;

  Future<void> _getFlutterUsers() async {
    var flutterUsers = await repository.getUsers();
    print(flutterUsers);
    state = state.copyWith(
      users: flutterUsers,
    );
  }
}
