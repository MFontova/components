import 'package:components/router/app_routes.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.green,
          appBarTheme: AppBarTheme(color: Colors.indigo, elevation: 0)),
    );
  }
}
