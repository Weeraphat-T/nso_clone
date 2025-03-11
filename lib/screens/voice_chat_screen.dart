import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/settings_screen.dart';

class Voice_Chat_Screen extends StatefulWidget {
  const Voice_Chat_Screen({super.key});

  @override
  _VoiceChatScreenState createState() => _VoiceChatScreenState();
}

class _VoiceChatScreenState extends State<Voice_Chat_Screen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 13, 13, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 40.0, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Voice Chat",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // ทำให้เว้นระยะอัตโนมัติ
              children: [
                Text(
                  'Start Alert',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                Switch.adaptive(
                  value: isSwitched,
                  activeColor: Colors.blue,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            Text(
              'The application will notify you when you can start using voice chat.',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

