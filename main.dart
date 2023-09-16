import 'package:flutter/material.dart';

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
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = {   
    'Bear',
    'Deer',
    'Tiger',
    'Lion'
  };};
  static List<String> animalImage = {
    'mage/child.png',
    'image/coffee.png',
    'image/home.png',
    'image/milk.png,
  };
  static List<String> animalName = {
    'a',
    'b',
    'c',
    'd'
  };
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(itemBuilder: itemBuilder),
    );
  }
}
