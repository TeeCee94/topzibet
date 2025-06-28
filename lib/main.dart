import 'package:flutter/material.dart';
import 'package:topzibet/homepage_main.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 187, 44, 1),
  );

void main () {
  runApp( 
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 5, 1, 40),
        colorScheme: kColorScheme,
        // tabBarTheme: const TabBarTheme(
        //   labelColor: Colors.deepOrangeAccent,
        //   unselectedLabelColor: Colors.grey,
        //   indicatorColor: Colors.deepOrangeAccent,
        // ),
      ),
      title: 'TopziBet',
      home: HomepageMain(),
      ),
    );
  }