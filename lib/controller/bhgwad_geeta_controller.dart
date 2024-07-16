import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataController extends ChangeNotifier {
  List data = [];
  List allData = [];
  DataController() {
    LoadJson();
  }
  //Get Data From File
  Future<void> LoadJson() async {
    String data = await rootBundle.loadString("lib/assets/data.json");
    //JSON
    allData = jsonDecode(data);
    notifyListeners();
  }
}
