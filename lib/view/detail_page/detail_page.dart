import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/bhgwad_geeta_model.dart';

class DetailPage extends StatelessWidget {
  final Chapter chapter;

  DetailPage({required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.nameTranslation),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => _showOptionsDialog(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/${chapter.imageName}.png'),
            SizedBox(height: 16),
            Text(
              chapter.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              chapter.nameMeaning,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16),
            Text(
              chapter.chapterSummary,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              chapter.chapterSummaryHindi,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Theme.of(context).platform == TargetPlatform.iOS
            ? CupertinoAlertDialog(
                title: Text('Options'),
                actions: [
                  CupertinoDialogAction(
                    child: Text('Share'),
                    onPressed: () {
                      Navigator.pop(context);
                      // Implement share functionality here
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Copy'),
                    onPressed: () {
                      Navigator.pop(context);
                      // Implement copy functionality here
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            : AlertDialog(
                title: Text('Options'),
                actions: [
                  TextButton(
                    child: Text('Share'),
                    onPressed: () {
                      Navigator.pop(context);
                      // Implement share functionality here
                    },
                  ),
                  TextButton(
                    child: Text('Copy'),
                    onPressed: () {
                      Navigator.pop(context);
                      // Implement copy functionality here
                    },
                  ),
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
      },
    );
  }
}
