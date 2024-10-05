import 'package:flutter/material.dart';
import 'navbarpage1.dart'; // Halaman Home
import 'navbarpage2.dart'; // Halaman Status
import 'navbarpage3.dart'; // Halaman Profile

void main() {
  runApp(const MainProject());
}

//#TODO_1 Atur nama statelessWidget Class
class MainProject extends StatelessWidget {
  const MainProject({super.key});

  //#TODO_3 Bangun MaterialApp dan Arahkan property home ke statefulWidget Class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DinoSaur(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//#TODO_2 Atur nama statefulWidget Class
class DinoSaur extends StatefulWidget {
  const DinoSaur({super.key});

  @override
  State<DinoSaur> createState() => _DinoSaurState();
}

class _DinoSaurState extends State<DinoSaur> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NavbarPage1(), // Home
    const NavbarPage2(), // Status
    const NavbarPage3(), // Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah index yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    //#TODO_4 Bangun Scaffold
    return Scaffold(
      //#TODO_5 Buat tampilan AppBar dengan border rounded
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          toolbarHeight: 40.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0), // Atur padding di sini
                      child: const Text(
                        'Gigachad',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Row(
                      children: const [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.camera_alt_rounded, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.more_vert, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: _pages[_selectedIndex],

      //#TODO_6 Buat tampilan BottomNavBar dengan 3 navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Story',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 255, 165, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}