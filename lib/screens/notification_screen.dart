import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/settings_screen.dart';
import 'package:nso_clone/widgets/mybutton.dart';

class Notifications_Screen extends StatelessWidget {
  const Notifications_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Settings_Screen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            size: 40.0,
            color: Colors.white,
          ),
        ),
        title: Column(
          children: [
            const SizedBox(
              height: 1.5,
            ),
            Text(
              "Notification",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'All push notifications are enabled',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'You can change the notification settings for this app on your smart devices setting menu',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            MyButton(
                onTap: () {},
                labelText: 'Change Settings',
              ),
            ],
        ),
      ),
    );
  }
}
