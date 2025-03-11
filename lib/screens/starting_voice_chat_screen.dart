import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/home_screen.dart';

class Starting_Voice_Chat_Screen extends StatelessWidget {
  const Starting_Voice_Chat_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 13, 13, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 40.0,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Starting Voice Chat",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // ป้องกัน text ชิดขอบ
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 130),
              
              // ขั้นตอนที่ 1
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Number1.png"),
                  const SizedBox(width: 13),
                  Expanded( // ใช้ Expanded เพื่อป้องกัน overflow
                    child: Text(
                      "On your Nintendo Switch console, open a software title that\nsupports voice chat. Then open the specified mode.",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 60),
              Image.asset("assets/SVC-1.png"),
              const SizedBox(height: 120),
              
              // ขั้นตอนที่ 2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Number2.png"),
                  const SizedBox(width: 13),
                  Expanded( // ใช้ Expanded เพื่อป้องกัน overflow
                    child: Text(
                      "You can start using voice chat immediately through the app!",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 60),
              Image.asset("assets/SVC-2.png"),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
