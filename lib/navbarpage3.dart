import 'package:flutter/material.dart';

//#TODO_11 Atur nama statefulWidget class untuk bottom navbar ketiga
class NavbarPage3 extends StatefulWidget {
  const NavbarPage3({super.key});

  @override
  State<NavbarPage3> createState() => _NavbarPage3State();
}

class _NavbarPage3State extends State<NavbarPage3> {
  //#TODO_12 Bangun tampilan pada bottom navbar ketiga 
  //berbentuk halaman profil berisi foto pribadi yang dibungkus dengan frame lingkaran, nama lengkap, dan email UNSIKA
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 255, 255, 255),
            Colors.orange.shade300,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Foto pribadi dibungkus dalam CircleAvatar
                  CircleAvatar(
                    radius: 60, // Ukuran lingkaran
                    backgroundImage: AssetImage('assets/images/devVal.jpg'), // Ganti dengan path gambar pribadi
                  ),
                  const SizedBox(height: 20), // Jarak antara foto dan teks
                  // Nama lengkap
                  const Text(
                    'Raival Maulidan Muhamad Akbar',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Email UNSIKA
                  const Text(
                    '2210631170145@student.unsika.ac.id',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Baris untuk asal dan hobi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Column(
                        children: [
                          Text(
                            'Asal',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Bandung',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Hobi',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Mencari Hobi',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}