import 'package:flutter/material.dart';
import 'package:flutter_app_riverpod/models/user_info.dart';

class UserItem extends StatelessWidget {
  UserItem({
    this.userInfo,
    this.onUserClicked,
  });

  final UserInfo userInfo;
  final ValueChanged onUserClicked;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => {},
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                userInfo.title,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                userInfo.body,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
