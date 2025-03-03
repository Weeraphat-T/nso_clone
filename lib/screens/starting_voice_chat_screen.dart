import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/home_screen.dart';

class Starting_Voice_Chat_Screen extends StatelessWidget {
  const Starting_Voice_Chat_Screen({super.key});

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
              "Starting Voice Chat",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Number1.png",
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "On your Nintendo Switch console, open a software title that\nsupports voice chat. Then open the specified mode.",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                    height: 1.1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/SVC-1.png"),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Number2.png",
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "You can start using voice chat immediately through the app!\n",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                    height: 0.7,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset("assets/SVC-2.png"),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
