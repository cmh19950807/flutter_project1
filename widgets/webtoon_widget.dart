import 'package:flutter/material.dart';
import 'package:fp1/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon(
      {super.key, required this.title, required this.id, required this.thumb});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetailScreen(title: title, id: id, thumb: thumb),
            ));
      },
      child: Column(
        children: [
          //Image.network(webtoon.thumb),
          // ignore: prefer_const_constructors
          Container(
            width: 250,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                      color: Colors.black.withOpacity(0.5))
                ]),
            child: Image.network(
              thumb,
              headers: const {
                "User-Agent":
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
