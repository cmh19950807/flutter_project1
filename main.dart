import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//image 경로에 사진 1,2 추가 후
// pubspec.yaml 아래 코드 추가

// assets:
//     - image/1.jpeg
//     - image/2.jpeg
// flutter pub add fluttertoast

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast message'),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue[100])),
          child: const Text(
            'Toast',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Flutter',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      toastLength: Toast.LENGTH_SHORT);
}
