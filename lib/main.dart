// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

import 'feature/prompt/ui/create_prompt_screen.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade900,
          // elevation: 0, 
        ),    
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey.shade900,
        
      ),
      debugShowCheckedModeBanner: false,
      home: CreatePromptScreen(),
    );
  }
}
