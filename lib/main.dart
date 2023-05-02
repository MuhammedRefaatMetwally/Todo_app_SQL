import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_g02/screens/layout_screen.dart';
import 'package:todo_app_g02/shared/palette.dart';

void main() {
  runApp(const MyApp());
}

///local and remote database

/// 1 - local database
///     * sqflite
///     * shared preferences

/// 2- remote database
///    * apis
///    * firebase

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: AppColors.primaryBlack,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         const Text("Welcome",style: TextStyle(
            fontSize: 20,
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
            fontFamily: "roboto",
          ),),
           SvgPicture.asset(
          "assets/icons/cross.svg",
          colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
          semanticsLabel: 'A red up arrow'
      ),
        ],
      ),
    );
  }
}
