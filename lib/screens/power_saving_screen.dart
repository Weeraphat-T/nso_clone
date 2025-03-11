import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/settings_screen.dart';
import 'package:nso_clone/widgets/mybutton.dart';

class Power_Saving_Screen extends StatelessWidget {
  const Power_Saving_Screen({super.key});

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
              "Who do you want to see your online status?",
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
              'Battery optimisation is currently activated',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'If The Andriod power-saving features (battery optimisation)\nare active, voice chat will not be available during sleep mode.\nTo use voice chat during sleep mode, deactivate battery\noptimisation for this app.',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
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
