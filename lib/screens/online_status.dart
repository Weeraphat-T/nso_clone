import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Online_Status_Screen extends StatefulWidget {
  @override
  _OnlineStatusScreenState createState() => _OnlineStatusScreenState();
}

class _OnlineStatusScreenState extends State<Online_Status_Screen> {
  String _selectedStatus = 'Best friends';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Settings_Screen(),
              ),
            );
          },
        ),
        title: Text(
          'Who do you want to see your online status?',
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text('All friends', style: GoogleFonts.roboto(fontSize: 16,color: Colors.white)),
            value: 'All friends',
            groupValue: _selectedStatus,
            onChanged: (value) {
              setState(() {
                _selectedStatus = value.toString();
              });
            },
            activeColor: Colors.blue,
          ),
          RadioListTile(
            title: Text('Best friends', style: GoogleFonts.roboto(fontSize: 16,color: Colors.white)),
            value: 'Best friends',
            groupValue: _selectedStatus,
            onChanged: (value) {
              setState(() {
                _selectedStatus = value.toString();
              });
            },
            activeColor: Colors.blue,
          ),
          RadioListTile(
            title: Text('No one', style: GoogleFonts.roboto(fontSize: 16,color: Colors.white)),
            value: 'No one',
            groupValue: _selectedStatus,
            onChanged: (value) {
              setState(() {
                _selectedStatus = value.toString();
              });
            },
            activeColor: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'You can set whether or not your friends can see your online status. However, you may not be able to play online with friends who cannot see your online status. This setting is linked to your Nintendo Switch console.',
              style: GoogleFonts.roboto(fontSize: 12, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}