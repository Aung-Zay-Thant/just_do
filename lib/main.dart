import 'package:flutter/material.dart';

import 'screen/to_do_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Sqfile",
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: ToDoListScreen(),
    );
  }
}