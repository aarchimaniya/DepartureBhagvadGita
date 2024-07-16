import 'package:bhgwadgeeta_app/controller/bhgwad_geeta_controller.dart';
import 'package:bhgwadgeeta_app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DataController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
