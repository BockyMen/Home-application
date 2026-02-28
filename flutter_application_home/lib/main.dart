import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';
import './widgets/BarraLateral.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        backgroundColor: const Color.fromARGB(150, 15, 16, 20),
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: const Color.fromARGB(150, 15, 16, 20),
          title: const Text('Mensajes', style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold)),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
            ),
          ],
        ),
        body: ListView(
            children: [
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: true,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
              CustomCard(
                title: "hola",
                subtitle: "adios",
                icon: Icons.person_sharp,
                isSelected: false,
              ),
            ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: const Color(0xffffffff),
          unselectedItemColor: const Color(0xFF868690),
          backgroundColor: const Color(0xff141318),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
