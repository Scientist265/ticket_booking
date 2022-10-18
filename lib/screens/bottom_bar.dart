import 'package:booking_ticket/screens/home_screen.dart';
import 'package:booking_ticket/screens/profile_screen.dart';
import 'package:booking_ticket/screens/search_screen.dart';
import 'package:booking_ticket/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedindex = 3;
  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = [
      HomeScreen(
        hotel: {},
      ),
      SearchScreen(),
      TicketScreen(),
      ProfileScreen(),
    ];
    void _onItemTapped(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFF0E1728),
      body: Center(
        child: _widgetOptions[_selectedindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1B2433),
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        elevation: 10,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
