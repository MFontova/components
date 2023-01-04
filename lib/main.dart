import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listview1': (context) => const Listview1Screen(),
        'listview2': (context) => const Listview2Screen(),
        'card': (context) => const CardScreen(),
        'alert': (context) => const AlertScreen(),
      },
    );
  }
}
