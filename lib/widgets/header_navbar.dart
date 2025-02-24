import 'package:flutter/material.dart';

class HeadNavbar extends StatelessWidget {
  const HeadNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images.png',
              width: 180,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:
                AssetImage('assets/Profile.jpg'), // เปลี่ยนเป็นภาพของคุณ
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
