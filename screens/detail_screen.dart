import 'package:flutter/material.dart';

//win
import 'package:flutter_application_1/models/webtoon_detail_model.dart';
import 'package:flutter_application_1/models/webtoon_episode_model.dart';
import 'package:flutter_application_1/services/api_services.dart';

//mac
//import 'package:fp1/models/webtoon_detail_model.dart';
//import 'package:fp1/models/webtoon_episode_model.dart';
//import 'package:fp1/services/api_services.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;
  const DetailScreen(
      {super.key, required this.title, required this.id, required this.thumb});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;

  late Future<List<WebtoonEpisdoeModel>> episodes;
  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatestEpisodesById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.id,
                child: Container(
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
                    widget.thumb,
                    headers: const {
                      "User-Agent":
                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          FutureBuilder(
            future: webtoon,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(snapshot.data!.about,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('${snapshot.data!.genre}  /  ${snapshot.data!.age}',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ],
                  ),
                );
              }
              return const Text('...');
            },
          ),
          const SizedBox(
            height: 20,
          ),
          FutureBuilder(
            future: episodes,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    for (var episode in snapshot.data!) Text(episode.title)
                  ],
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
