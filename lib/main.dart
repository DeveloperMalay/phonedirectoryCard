import 'package:flutter/material.dart';
import 'package:phonedirectory/screens/vertical_phone_directory_screen.dart';
import 'package:phonedirectory/screens/horizontal_phone_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // I make two type of design one for horizontal Listview another is vertical Listview
      // for horizontal screen
      // home: const HorizontalPhoneDirectoryScreen(),

      //for Vertical Screen
      home: const VerticalPhoneDirectoryScreen(),
    );
  }
}
