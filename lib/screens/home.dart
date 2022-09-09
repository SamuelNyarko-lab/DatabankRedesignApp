// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:databankapp/screens/homepage.dart';
import 'package:databankapp/screens/productscreen.dart';
import 'package:databankapp/screens/resourcescreen.dart';
import 'package:databankapp/screens/userscreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedtab = 0;
  final List<Widget> _taboptions = <Widget>[
    Homepage(),
    ProductScreen(),
    ResourceScreen(),
    UserScreen()
  ];
  @override
  Widget build(BuildContext context) {
    //double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        elevation: 0,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromRGBO(9, 154, 25, 1),
        currentIndex: _selectedtab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'You',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedtab = index;
          });
        },
      ),
      body: _taboptions.elementAt(_selectedtab),
    );
  }
}
