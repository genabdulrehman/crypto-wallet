import 'package:crypto_wallet/screends/bottom_nav.dart';
import 'package:crypto_wallet/screends/get_started_screen.dart';
import 'package:crypto_wallet/screends/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedScreen(),
    );
  }
}
