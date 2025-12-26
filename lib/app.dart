// import 'package:batch14/module11/Module11Class1.dart';
// import 'package:batch14/module11/Module11Class3.dart';
import 'package:batch14/module11/Module11Class3.dart';
import 'package:flutter/material.dart';

// import 'module11/module11Class2.dart';






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

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Color(0xFF121212),

        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        colorScheme: ColorScheme.dark(
          primary: Colors.deepPurple,
          secondary: Colors.purpleAccent,
          surface: Color(0xFF1E1E1E),
          background: Color(0xFF121212),
        ),

        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),


      home: Module11class3(),
    );
  }
}
