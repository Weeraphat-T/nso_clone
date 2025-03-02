import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nso_clone/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Welcome to Mytravel App",
              body: "Explore the amazing features of our app for traveling.",
              //image: buildImage('assets/images/Capture1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Make more Experience",
              body: "Searching lovely location for you.",
              //image: buildImage('assets/images/Capture2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Get Started",
              body: "Starting for good Travel and Experience.",
              //image: buildImage('assets/images/Capture3.png'),
              decoration: getPageDecoration(),
              footer: ElevatedButton(
                onPressed: () => goToHome(context),
                child: const Text("Start Now"),
              ),
            ),
          ],
          done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          //showSkipButton: true,
          skip: const Text("Skip"),
          next: const Icon(Icons.arrow_forward),
          dotsDecorator: getDotsDecorator(),
        ),
      ),
    );
  }

  void goToHome(BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON BOARDING', false);
    Navigator.of(context).pushReplacement(
      // ignore: prefer_const_constructors
      MaterialPageRoute(builder: (_) => Home_Screen()),
    );
  }

  Widget buildImage(String path) => Center(child: Image.asset(path, width: 250));

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16, color: Colors.grey),
        imagePadding: EdgeInsets.all(20),
      );

  DotsDecorator getDotsDecorator() => DotsDecorator(
        size: const Size(10, 10),
        color: Colors.grey,
        activeSize: const Size(22, 10),
        activeColor: Colors.blue,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      );
}