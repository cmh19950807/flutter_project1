import 'package:flutter/material.dart';

//image 경로에 사진 1,2 추가 후
// pubspec.yaml 아래 코드 추가

// assets:
//     - image/1.jpeg
//     - image/2.jpeg

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
        title: const Text('Snack Bar'),
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Hi'),
              ),
            );
          },
          child: const Text(
            'SHOW',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
