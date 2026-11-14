import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/data_provider.dart';
import 'package:untitled/screens/drag_screen.dart';
import 'package:untitled/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(child: MyApp(), create: (context) => DataProvider()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scren(),
      debugShowCheckedModeBanner: false,
    );
  }
}
