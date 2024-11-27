import 'package:flutter/material.dart';
import 'package:yolcu/pages/campaigns_page.dart';
import 'package:yolcu/pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    SearchTab(), // Ara sekmesi
    CampaignTab(),  //Kampanyalar sekmesi
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Kampanyalar',
          ),
        ],
      ),
    );
  }
}
