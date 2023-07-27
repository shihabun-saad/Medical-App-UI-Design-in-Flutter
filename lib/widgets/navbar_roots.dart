import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/messages_screen.dart';
import 'package:project/screens/schedule_screen.dart';
import 'package:project/screens/settings_screen.dart';

class NavBar_Roots extends StatefulWidget {
  const NavBar_Roots({super.key});

  @override
  State<NavBar_Roots> createState() => _NavBar_RootsState();
}

class _NavBar_RootsState extends State<NavBar_Roots> {


  int _selectedIndex = 0;
  final _screens = [
    //Home_Screen
    Home_Screen(),
    //Massages Screen
    MassagesScreen(),
    //Schedule Screen
    Schedule_Screen(),
    //Settings Screen
    Settings_Screen(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),

          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Messages"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: "Schedule"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings"
            ),
          ],

        ),
      ),
    );
  }
}