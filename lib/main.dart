import 'package:flutter/material.dart';
import 'package:mynavigator/page/about.dart';
import 'package:mynavigator/page/contacs.dart';
import 'package:mynavigator/page/homepage.dart';
import 'package:mynavigator/page/namecontacs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const Homepage(),
        '/about': (BuildContext context) => const About(),
        '/contacs': (BuildContext context) => Contacs(),
        '/namecontacs': (BuildContext context) => Namecontacs(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
