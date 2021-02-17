import 'package:flutter/material.dart';
import 'package:flutter_app_riverpod/repositories/user_repository.dart';
import 'package:flutter_app_riverpod/state/user_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_item.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UserList Sample',
        ),
        centerTitle: true,
      ),
      body: _List(),
    );
  }
}

class _List extends StatelessWidget {
  final userStateNotifier = StateNotifierProvider(
    (_) => UserStateNotifier(
      UserRepository(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(userStateNotifier.state);
        return ListView.builder(
          itemCount: state.users.length,
          itemBuilder: (context, int position) => UserItem(
            userInfo: state.users[position],
          ),
        );
      },
    );
  }
}
