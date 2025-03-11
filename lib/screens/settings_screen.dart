import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/home_screen.dart';
import 'package:nso_clone/screens/notification_screen.dart';
import 'package:nso_clone/screens/online_status.dart';
import 'package:nso_clone/screens/power_saving_screen.dart';
import 'package:nso_clone/screens/voice_chat_screen.dart';
import 'package:nso_clone/widgets/setting_listview.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

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
          "Settings",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView( // เปลี่ยนเป็น SingleChildScrollView แทน Expanded
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(41, 41, 41, 1),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: const AssetImage("assets/MyProfile.jpg"),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Weeraphat_T',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Friend Code',
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'SW - 5555 - 5555 - 5555',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.copy, color: Colors.white),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_vert, color: Colors.white),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Friend Requests
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      '123',
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Friend requests",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 40),

              // Settings
              SectionHeader(title: "Settings"),
              SettingsItem(
                title: "Who do you want to see your online status?",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Online_Status_Screen()),
                ),
              ),
              SettingsItem(
                title: "Notifications",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications_Screen()),
                ),
              ),
              SettingsItem(
                title: "Voice Chat",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Voice_Chat_Screen()),
                ),
              ),
              SettingsItem(
                title: "Power Saving",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Power_Saving_Screen()),
                ),
              ),
              const SizedBox(height: 40),

              // Other
              SectionHeader(title: "Other"),
              SettingsItem(title: "Alerts"),
              SettingsItem(title: "Feedback"),
              SettingsItem(title: "About Sending Usage Data"),
              SettingsItem(title: "Nintendo Support Website"),
              const SizedBox(height: 40),

              // About
              SectionHeader(title: "About This App"),
              SettingsItem(title: "Nintendo Account Agreement"),
              SettingsItem(title: "Nintendo Account Privacy Policy"),
              SettingsItem(title: "Intellectual Property Notices"),
              const SizedBox(height: 10),

              // Version
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Version",
                    style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "2.12.2",
                    style: GoogleFonts.roboto(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Nintendo Account
              SectionHeader(title: "Nintendo Account"),
              SettingsItem(title: "s6----- / We----"),
              SectionHeader(title: "Support Code"),
              SettingsItem(title: "5555-5555-5555-5555-5555-5"),
              const SizedBox(height: 40),

              // Sign out
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    backgroundColor: Colors.black26,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text(
                    'Sign out',
                    style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Footer
              SectionHeader(title: "@Nintendo"),
            ],
          ),
        ),
      ),
    );
  }
}
