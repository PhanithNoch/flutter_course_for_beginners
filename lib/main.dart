import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/gridview_movie_screen.dart';
import 'package:learning_flutter/screens/home_movie_screen.dart';
import 'package:learning_flutter/screens/movie_screen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: darkTheme,
      home: GridViewMovieScreen(),
    );
  }
}

