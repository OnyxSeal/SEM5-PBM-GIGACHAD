import 'package:flutter/material.dart';

//#TODO_9 Atur nama statefulWidget class untuk bottom navbar kedua
class NavbarPage2 extends StatefulWidget {
  const NavbarPage2({super.key});

  @override
  State<NavbarPage2> createState() => _NavbarPage2State();
}

class _NavbarPage2State extends State<NavbarPage2> {
  //#TODO_10 Bangun tampilan pada bottom navbar kedua berbentuk row dan column dengan tampilan 2 baris dan minimal 5 kolom
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.7, // Menyesuaikan rasio aspek
        ),
        itemCount: 10, // 5 baris x 2 kolom = 10 item
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Gambar latar belakang
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/hondah.jpg', // Ganti dengan path gambar
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                // Gradient transparan
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent, // Mulai transparan
                        Colors.black.withOpacity(1), // Akhiri dengan hitam setengah transparan
                      ],
                    ),
                  ),
                ),
                // Lingkaran untuk gambar profil
                Positioned(
                  top: 10,
                  left: 10,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/ultraPP.jpg', // Ganti dengan path gambar profil
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Nama pembuat
                Positioned(
                  bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Pembuat Story ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}