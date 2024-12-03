import 'package:firebase/core/localization/locale_manager.dart';
import 'package:firebase/screens/profile_screen.dart';
import 'package:firebase/screens/settings_screen.dart';
import 'package:firebase/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text('Ana Sayfa', style: TextStyle(fontSize: 24),),),
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localManager = Provider.of<LocaleManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localManager.translate("title")),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Center(
            child: Text(localManager.translate("home"),
            style: TextStyle(fontSize: 24),
            ),
          ),
          ProfileScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: _selectedIndex, onTap: _onItemTapped),

    );
  }
}
