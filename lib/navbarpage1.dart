import 'package:flutter/material.dart';

//#TODO_7 Atur nama statefulWidget class untuk bottom navbar pertama
class NavbarPage1 extends StatefulWidget {
  const NavbarPage1({super.key});

  @override
  State<NavbarPage1> createState() => _NavbarPage1State();
}

class _NavbarPage1State extends State<NavbarPage1> {
  //#TODO_8 Bangun tampilan pada bottom navbar pertama berbentuk listtile minimal 15 list
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15, // Jumlah chat
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 255, 165, 0),
            child: ClipOval(
              child: Image.asset(
                'assets/images/ultraPP.jpg', // Update with your image path
                width: 40, // Adjust size as needed
                height: 40, // Adjust size as needed
                fit: BoxFit.cover,
              ),
            ),
          ),

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sender ${index + 1}'),
              Text(
                '12.00', // Waktu pesan
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          subtitle: Text('Pesan'),
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        );
      },
    );
  }
}
