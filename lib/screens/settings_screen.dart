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
      body: Expanded(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 65,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(41, 41, 41, 1),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: SizedBox(
                          width: 900,
                          height: 300,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/MyProfile.jpg"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Weeraphat_T',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'Friend Code',
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'SW - 5555 - 5555 - 5555',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 70,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(88, 88, 88, 1),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Icon(
                                        Icons.copy,
                                        size: 30.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 70,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(88, 88, 88, 1),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Icon(
                                        Icons.more_vert,
                                        size: 30.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 700,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: SizedBox(
                        width: 43,
                        height: 25,
                        child: Text(
                          '123',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      "Friend requests",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 25.0,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SectionHeader(title: "Settings"),
            SettingsItem(
              title: "Who do you want to see your online status?",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Online_Status_Screen(),
                  ),
                );
              },
            ),
            SettingsItem(title: "Notifications",onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifications_Screen(),
                  ),
                );
              },
            ),
            SettingsItem(title: "Voice Chat",onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Voice_Chat_Screen(),
                  ),
                );
              },
            ),
            SettingsItem(title: "Power Saving",onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Power_Saving_Screen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 60,
            ),
            SectionHeader(title: "Other"),
            SettingsItem(title: "Alerts"),
            SettingsItem(title: "Feedback"),
            SettingsItem(title: "About Sending Usage Data"),
            SettingsItem(title: "Nintendo Support Website"),
            SizedBox(
              height: 60,
            ),
            SectionHeader(title: "About This App"),
            SettingsItem(title: "Nintendo Account Agreement"),
            SettingsItem(title: "Nintendo Account Privacy Policy"),
            SettingsItem(title: "Intellectual Property Notices"),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Version",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 1680,
                ),
                Text(
                  "2.12.2",
                  style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SectionHeader(title: "Nintendo Account"),
            SettingsItem(title: "s6----- / We----"),
            SectionHeader(title: "Support Code"),
            SectionHeader(title: "5555-5555-5555-5555-5555-5"),
            SizedBox(
              height: 60,
            ),
            Center(
              child: ListTile(
                title: Text(
                  'Sign out',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                onTap: () {
                  // Handle tap action
                },
                tileColor: Colors.black26,
              ),
            ),
            SectionHeader(title: "@Nintendo"),
          ],
        ),
      ),
    );
  }
}
