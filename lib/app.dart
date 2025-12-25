import 'package:batch14/module11/Module11Class1.dart';
import 'package:batch14/module11/Module11Class3.dart';
import 'package:flutter/material.dart';

import 'module11/module11Class2.dart';






class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.blue.shade50,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue.shade100,
        foregroundColor: Colors.blueAccent,
        )
      ),


      home: Module11class3(),
    );
  }
}
