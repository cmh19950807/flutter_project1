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
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});
  var titleList = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'];
  var imageList = [
    'image/child.png',
    'image/coffee.png',
    'image/home.png',
    'image/milk.png',
    'image/1.jpeg',
    'image/2.jpeg'
  ];
  var description = [
    '1.acsacsacasca',
    '2.acsacsacsa',
    '3.acsacascacas',
    '14.acsacascsa',
    '15.acsacacscas',
    '16.acsacascascsac',
    '17.acsacascsa',
    '18.a',
    '19.a',
  ];

  void showPopup(context, title, image, description) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                      label: const Text('close'))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double widthWidth = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0.3,
      ),
      body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                debugPrint(titleList[index]);
                showPopup(context, titleList[index], imageList[index],
                    description[index]);
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(imageList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            titleList[index],
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: widthWidth,
                            child: Text(
                              description[index],
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[500]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
