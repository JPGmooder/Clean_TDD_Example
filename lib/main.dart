import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tddclean/features/activities/data/models/activity_model.dart';
import 'package:tddclean/injection_container.dart';

void main() async {
  Hive.registerAdapter<ActivityModel>(ActivityModelAdapter());
  Hive.init(Directory.current.path);

  await Hive.openBox<ActivityModel>("Models");
  ServiceLocator.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
