import 'package:flutter/services.dart';
import 'dart:convert';

class HadithCollection {
  final int id;
  final String name;
  final String author;
  final String description;
  final int totalHadith;
  final int totalChapters;

  HadithCollection({
    required this.id,
    required this.name,
    required this.author,
    required this.description,
    required this.totalHadith,
    required this.totalChapters,
  });

  factory HadithCollection.fromJson(Map<String, dynamic> json) {
    return HadithCollection(
      id: json['id'],
      name: json['name'],
      author: json['author'],
      description: json['description'],
      totalHadith: json['totalHadith'],
      totalChapters: json['totalChapters'],
    );
  }

  int get getId => id;

  String get getName => name;

  String get getAuthor => author;

  String get getDescription => description;

  int get getTotalHadith => totalHadith;

  int get getTotalChapters => totalChapters;
}

class HadithCollections {
  static List<HadithCollection> _collections = [];

  static Future<void> load() async {
    final jsonString =
        await rootBundle.loadString('assets/hadithCollections.json');
    final jsonList = json.decode(jsonString) as List<dynamic>;

    _collections =
        jsonList.map((json) => HadithCollection.fromJson(json)).toList();
  }

  static List<HadithCollection> get collections => _collections;
}
