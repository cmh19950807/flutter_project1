import 'package:flutter/material.dart';

//win
import 'package:flutter_application_1/screens/home_screens.dart';

//mac
//import 'package:fp1/screens/home_screens.dart';

//import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
