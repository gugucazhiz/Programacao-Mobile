// To parse this JSON data, do
//
//     final noticias = noticiasFromJson(jsonString);

import 'dart:convert';

Noticias noticiasFromJson(String str) =>
    Noticias.fromJson(json.decode(str));

String noticiasToJson(Noticias data) =>
    json.encode(data.toJson());

class Noticias {
  final List<Noticia> data;

  Noticias({
    required this.data,
  });

  factory Noticias.fromJson(Map<String, dynamic> json) => Noticias(
        data: List<Noticia>.from(
          json["data"].map(
            (x) => Noticia.fromJson(x),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(
          data.map((x) => x.toJson()),
        ),
      };
}

class Noticia {
  final String uuid;
  final String title;
  final String publishedAt;
  final String publisher;

  Noticia({
    required this.uuid,
    required this.title,
    required this.publishedAt,
    required this.publisher,
  });

  factory Noticia.fromJson(Map<String, dynamic> json) => Noticia(
        uuid: json["uuid"],
        title: json["title"],
        publishedAt: json["published_at"],
        publisher: json["publisher"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "title": title,
        "published_at": publishedAt,
        "publisher": publisher,
      };
}