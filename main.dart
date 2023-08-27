import 'package:flutter/material.dart';

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
    return MaterialApp(
      initialRoute: "A",
      routes: {
        "A": (context) => const ScreenA(),
        "B": (context) => const ScreenB(),
        "C": (context) => const ScreenC()
      },
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                onPressed: () {
                  print('a');
                },
                icon: const Icon(Icons.home),
                label: const Text('data'))
            // TextButton.icon(
            //     onPressed: () {
            //       Navigator.pushNamed(context, "B");
            //     },
            //     child: const Text('Go to B Page')),
            ,
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "C");
                },
                child: const Text('Go to C Page')),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              buttonPadding: const EdgeInsets.all(30),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Textbutton'),
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('ElevatedButton'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go to First Page')),
      ),
    );
  }
}

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go to First Page')),
      ),
    );
  }
}
