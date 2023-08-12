import 'package:flutter/material.dart';
import 'package:fp1/screens/home_screens.dart';
import 'package:fp1/services/api_services.dart';

//import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  Apiservice().getTodaysToon();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
