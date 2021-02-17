import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';

part 'user_info.g.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  factory UserInfo({
    String title,
    String body,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
