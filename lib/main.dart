import 'package:flutter/material.dart';
import 'package:sf_assessment1/login.dart';
import 'package:sf_assessment1/logout.dart';

void main() {
  runApp(const StartingScreen());
}

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() {
    return _StartingScreenState();
  }
}

class _StartingScreenState extends State<StartingScreen> {
  var activeScreen = 'login_screen';

  void switchScreen() {
    setState(
      () {
        activeScreen = 'user_screen';
      },
    );
  }

  void logout() {
    setState(() {
      activeScreen = 'login_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenchange = Login(switchScreen);
    if (activeScreen == "user_screen") {
      screenchange = Logout(logout);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(238, 189, 137, 1),
                      Color.fromRGBO(209, 58, 189, 1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: screenchange)));
  }
}
