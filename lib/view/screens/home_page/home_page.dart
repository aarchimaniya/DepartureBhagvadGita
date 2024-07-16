import 'dart:convert';
import 'package:flutter/material.dart';

import '../../../model/bhgwad_geeta_model.dart';
import '../../detail_page/detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Chapter> chapters = [];

  ChapterListPage() {
    // Replace with the actual JSON data loading
    String jsonData = '''
    [
      {
        "chapter_number": 1,
        "chapter_summary": "The first chapter of the Bhagavad Gita...",
        "chapter_summary_hindi": "भगवद गीता का पहला अध्याय...",
        "id": 1,
        "image_name": "arjuna-vishada-yoga",
        "name": "अर्जुनविषादयोग",
        "name_meaning": "Arjuna's Dilemma",
        "name_translation": "Arjuna Visada Yoga",
        "name_transliterated": "Arjun Viṣhād Yog",
        "verses_count": 47
      }
      // Add other chapters here
    ]
    ''';

    List<dynamic> jsonList = json.decode(jsonData);
    chapters.addAll(jsonList.map((json) => Chapter.fromJson(json)).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bhagavad Gita Chapters'),
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          Chapter chapter = chapters[index];
          return ListTile(
            title: Text(chapter.nameTranslation),
            subtitle: Text(chapter.nameMeaning),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(chapter: chapter),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
