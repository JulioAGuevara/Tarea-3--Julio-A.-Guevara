import 'package:flutter/material.dart';
import 'package:tarea3/src/pages/page_info.dart';
import 'package:tarea3/src/pages/page_login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const  LoginPage(),
      onGenerateRoute: (settings) {
        switch(settings.name){
          case '/infopage':
            return MaterialPageRoute(builder: (context) => const InfoPage(), settings: settings);
          case '/loginpage':
            return MaterialPageRoute(builder: (context) => const LoginPage());
          default:
            return MaterialPageRoute(builder: (context) => const LoginPage());
        }
      },
    );
  }
}