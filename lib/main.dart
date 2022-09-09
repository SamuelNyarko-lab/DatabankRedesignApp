import 'package:databankapp/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DatabankApp());
}

class DatabankApp extends StatelessWidget {
  const DatabankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Bank',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
      // home: const ResourceDetailScreen(),
    );
  }
}
