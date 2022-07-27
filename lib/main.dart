import 'package:flutter/material.dart';
import 'package:food_ordering_ui_app/Screens/home_page.dart';
import 'package:food_ordering_ui_app/Util/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering Ui',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kSecondaryColor),
          bodyText2: TextStyle(color: kSecondaryColor),
        ),
        // appBarTheme: AppBarTheme(color: kPrimaryColor),
      ),
      home: const HomePage(),
    );
  }
}
