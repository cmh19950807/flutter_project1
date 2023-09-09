import 'package:flutter/material.dart';
import 'package:flutter_application_1/OnBoarding.dart';

//image 경로에 사진 1,2 추가 후
// pubspec.yaml 아래 코드 추가

// assets:
//     - image/1.jpeg
//     - image/2.jpeg
// flutter pub add fluttertoast
//flutter pub add introduction_screen

// - image/ 파일 아래 모든 파일 inport
// - image/child.png
// - image/coffee.png
// - image/home.png
// - image/milk.png

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

//OnBoardingPage
class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Main Page',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const OnBoardingPage(),
                ));
              },
              child: const Text('Go to onBoarding Screen'),
            )
          ],
        ),
      ),
    );
  }
}
