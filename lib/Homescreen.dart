import 'package:flutter/material.dart';

import 'cards2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFFCCFF00)),
          onPressed: () {},
        ),
        title: Text(
          'FITZONE',
          style: TextStyle(
            color: const Color(0xFFCCFF00),
            fontWeight: FontWeight.w900,
            fontSize: 24,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFFCCFF00),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
            children: const [
              Cards2(
                imagesUrl: 'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?q=80&w=600',
                title: 'Monthly',
                subtitle: '18 classes and machines',
                price: '1200 LE',
              ),
              SizedBox(height: 16),
              Cards2(
                imagesUrl: 'https://images.unsplash.com/photo-1534438327276-14e5300c3a48?q=80&w=600',
                title: 'Half a month',
                subtitle: '12 classes',
                price: '500 LE',
              ),
              SizedBox(height: 16),
              Cards2(
                imagesUrl: 'https://images.unsplash.com/photo-1637666062717-1c6bcfa4a4df?q=80&w=600',
                title: 'Private',
                subtitle: '30 Classes',
                price: '2000 LE',
              ),
            ],
          ),

          Positioned(
            bottom: 16,
            left: 24,
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFCCFF00).withValues(alpha: 0.4),
                    blurRadius: 15,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 28,
                ),
                label: const Text(
                  'START WORKOUT',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCCFF00),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white10, width: 1)),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF000000),
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFCCFF00),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.home_outlined),
              ),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.fitness_center),
              ),
              label: 'Workouts',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.person_outline),
              ),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
