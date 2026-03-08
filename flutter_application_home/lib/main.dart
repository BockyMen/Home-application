import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';

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
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(150, 15, 16, 20),
          title: const Text(
            'Mensajes',
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
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
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  UserNotification(imagen: "https://i.pinimg.com/474x/a7/de/c4/a7dec46aca07b2e12e2e361cfa9312ec.jpg", title: 'SebitasV y hide en lan', title2: 'General'),
                  UserNotification(imagen: "https://i.pinimg.com/474x/74/bb/34/74bb340ffe87e31837a04a538f1bbc10.jpg", title: 'Osvaldo', title2: 'Online'),
                  UserNotification(imagen: "https://yt3.googleusercontent.com/lDfhM9v8EMD9xu5AySo8KXDP0PwajfJowF66T3Kmte6mLl69okvXnFav3zWr01mO7jNonq19-Ow=s160-c-k-c0x00ffffff-no-rj", title: 'BockyMen', title2: 'Jugando Resident Evil Requiem')
                ],
              ),
            ),
            CustomCard(
              title: "Minecraft",
              subtitle: "PvP",
              isSelected: true,
              imagen:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Minecraft-creeper-face.svg/1280px-Minecraft-creeper-face.svg.png",
            ),
            CustomCard(
              title: "Kirby",
              subtitle: "Facherisimo",
              isSelected: false,
              imagen:
                  "https://pbs.twimg.com/profile_images/1512424162505150469/1iqopIbB_400x400.jpg",
            ),
            CustomCard(
              title: "Gato",
              subtitle: "Arabe",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/564x/7e/0e/cd/7e0ecd983170fb2e26fe2f9ec3b70058.jpg",
            ),
            CustomCard(
              title: "Gato",
              subtitle: "Whiskas",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/474x/7b/1d/52/7b1d526899529bdae2c811e52cee7141.jpg",
            ),
            CustomCard(
              title: "Erick",
              subtitle: "Sin vida",
              isSelected: false,
              imagen:
                  "https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/5NEPHCKSG5G6PA3KARK6TVWGZU.jpg",
            ),
            CustomCard(
              title: "Dios de la ofertas",
              subtitle: "La mejor inversión",
              isSelected: false,
              imagen:
                  "https://i.blogs.es/ea7b9d/rebajassteam2017/1366_2000.jpg",
            ),
            CustomCard(
              title: "Buzz",
              subtitle: "Al infinito y más alla",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/1200x/65/a4/0e/65a40e2ae16e775c8c7a8fa977ac4f39.jpg",
            ),
            CustomCard(
              title: "Pablo",
              subtitle: "El chisme es vida",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/1200x/02/13/0c/02130c599d2b8c0271c4d970d32e67bf.jpg",
            ),
            CustomCard(
              title: "Pato",
              subtitle: "Peguelo",
              isSelected: false,
              imagen:
                  "https://wallpapers.com/images/featured/imagenes-de-perfil-de-meme-vnigweuy4onsxunv.jpg",
            ),
            CustomCard(
              title: "Pajaro Esquizo",
              subtitle: "Donde estan las womans",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/236x/1b/e9/19/1be91948bb228ebc114f0e456b1c08f5.jpg",
            ),
            CustomCard(
              title: "Shrek",
              subtitle: "Salgan de mi pantano!",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/474x/71/92/76/719276fb3ef2363ad1d4a6cb39e7530a.jpg",
            ),
            CustomCard(
              title: "Rosa",
              subtitle: "Cuidadito",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/474x/6a/c6/ef/6ac6ef1ff804d249c09e155fd80288a0.jpg",
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
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}