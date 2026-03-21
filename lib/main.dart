import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      title: "On Boarding Screens",
      debugShowCheckedModeBanner: false,
      // home: ,
    ),
  );
}
