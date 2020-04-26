import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),//create is used instead of builder
      child: MaterialApp(
        home: TasksScreen() ,
      ) ,
    );
  }
}

