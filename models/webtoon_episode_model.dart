class WebtoonEpisdoeModel {
  final String id, title, rating, date;

  WebtoonEpisdoeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}
