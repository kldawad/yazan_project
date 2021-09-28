import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yazan_project/ui/screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF333652), // DarkBlue
        backgroundColor: Color(0xFFFAD02C), // yellow
        accentColor: Color(0xFF90ADC6), // lightBlue
        canvasColor: Color(0xFFE9EAEC), // grey

        scaffoldBackgroundColor: Color(0xFFFAD02C),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFFAD02C),
        ),
        primaryIconTheme: IconThemeData(color: Colors.indigo),
        cardColor: Color(0xFF333652),
        dividerColor: Color(0xFF333652),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange))),
        // ...........

        splashColor: Colors.teal,
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(
        //     color: Color(0xFFefcfe3),
        //   ),
        //   bodyText2: TextStyle(
        //     color: Colors.yellow,
        //   ),
        // ),
      ),
      home: LoginScreen(),
    );
  }
}
