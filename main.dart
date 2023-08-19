import 'package:flutter/material.dart';

//win
//import 'package:flutter_application_1/screens/home_screens.dart';

//mac
import 'package:fp1/screens/home_screens.dart';

//import 'package:flutter_application_1/screens/home_screen.dart';

// install list
// flutter pub add url_launcher
// flutter pub add http

//url_launcher 경로에 붙여 넣기 필요
// https://pub.dev/packages/url_launcher

//win    <!-- If your app checks for SMS support -->
// <intent>
//     <action android:name="android.intent.action.VIEW" />
//     <data android:scheme="https" />
// </intent>

//ios
// <key>LSApplicationQueriesSchemes</key>
// <array>
//   <string>https</string>
// </array>

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
