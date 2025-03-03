import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/home_screen.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

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
                builder: (context) => Home_Screen(),
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
              "Settings",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            ],
          ),
        ),
    );
  }
}