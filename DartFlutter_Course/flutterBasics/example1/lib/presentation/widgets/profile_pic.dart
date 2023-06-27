import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(
      child: Container(
        height: 200,
        width:200,
        child: CircleAvatar(
          radius: 200,
          backgroundImage: const AssetImage("assets/images/p2.jpg"),
        )
      )
    ),);
  }
}