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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charactor',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('BBANTO'),
        titleTextStyle:
            const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('image/1.jpeg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 55,
              color: Colors.amber[100],
              thickness: 1,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.8),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'BBANTO',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'BBANTO POWER LEVEL',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '14',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Using light',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Using light',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Using light',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('image/2.jpeg'),
                backgroundColor: Colors.amber,
                radius: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
