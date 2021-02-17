import 'package:flutter/foundation.dart';
import 'package:flutter_app_riverpod/models/user_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

part 'user_state.g.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({@Default([]) List<UserInfo> users}) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
