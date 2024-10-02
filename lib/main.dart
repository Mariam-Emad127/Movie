import 'package:flutter/material.dart';
import 'package:movie/core/services/services_locator.dart';
import 'package:movie/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme: ThemeData.light(),
 
      home: MoviesScreen(),
    );
  }
}
 