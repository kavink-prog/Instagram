import 'package:e_commerce/Screens/Welcome_screen.dart';
import 'package:e_commerce/Screens/Home_page.dart';
import 'package:e_commerce/provider/changenotifer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' ',
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => HomePage(),
      },
    );
  }
}
