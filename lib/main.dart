import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          scaffoldBackgroundColor: kbgColor,
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.black54),
          )),
      home: const HomeScreen(),
    );
  }
}
