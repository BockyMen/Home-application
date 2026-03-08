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
          backgroundColor: const Color.fromARGB(97, 15, 16, 20),
          toolbarHeight: 100,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mensajes", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 200, 200, 207), fontWeight: FontWeight.w500, fontFamily: "Discord")),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(57, 134, 134, 144),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.search_rounded,color: Color.fromARGB(255, 169, 169, 180)),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 95, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(57, 134, 134, 144),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.person_add,color: Color.fromARGB(255, 181, 181, 192), size: 25,),
                        SizedBox(width: 8),
                        Text("Añadir amigos", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 255, 255), fontFamily: "Discord", fontWeight: FontWeight.bold))
                      ],
                    )
                  ),
                ],
              ),
            ],
          ),
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
                  UserNotification(imagen: "https://yt3.googleusercontent.com/lDfhM9v8EMD9xu5AySo8KXDP0PwajfJowF66T3Kmte6mLl69okvXnFav3zWr01mO7jNonq19-Ow=s160-c-k-c0x00ffffff-no-rj", title: 'BockyMen', title2: 'Manqueando en terror')
                ],
              ),
            ),
            CustomCard(
              title: "Minecraft",
              subtitle: "PvP 1.8.9 la mejor versión",
              isSelected: true,
              imagen:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Minecraft-creeper-face.svg/1280px-Minecraft-creeper-face.svg.png",
              mensaje: "5h",
            ),
            CustomCard(
              title: "Kirby",
              subtitle: "Facherisimo",
              isSelected: false,
              imagen:
                  "https://pbs.twimg.com/profile_images/1512424162505150469/1iqopIbB_400x400.jpg",
              mensaje: "5h",
            ),
            CustomCard(
              title: "Gato",
              subtitle: "Arabe",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/564x/7e/0e/cd/7e0ecd983170fb2e26fe2f9ec3b70058.jpg",
              mensaje: "18h",
            ),
            CustomCard(
              title: "Gato",
              subtitle: "Whiskas",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/474x/7b/1d/52/7b1d526899529bdae2c811e52cee7141.jpg",
              mensaje: "20h",
            ),
            CustomCard(
              title: "Erick",
              subtitle: "Sin vida",
              isSelected: false,
              imagen:
                  "https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/5NEPHCKSG5G6PA3KARK6TVWGZU.jpg",
              mensaje: "1 días",
            ),
            CustomCard(
              title: "Dios de la ofertas",
              subtitle: "La mejor inversión",
              isSelected: false,
              imagen:
                  "https://i.blogs.es/ea7b9d/rebajassteam2017/1366_2000.jpg",
              mensaje: "3 días",
            ),
            CustomCard(
              title: "Buzz",
              subtitle: "Al infinito y más alla",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/1200x/65/a4/0e/65a40e2ae16e775c8c7a8fa977ac4f39.jpg",
              mensaje: "6 días",
            ),
            CustomCard(
              title: "Pablo",
              subtitle: "El chisme es vida",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/1200x/02/13/0c/02130c599d2b8c0271c4d970d32e67bf.jpg",
              mensaje: "12 días",
            ),
            CustomCard(
              title: "Pato",
              subtitle: "Peguelo",
              isSelected: false,
              imagen:
                  "https://wallpapers.com/images/featured/imagenes-de-perfil-de-meme-vnigweuy4onsxunv.jpg",
              mensaje: "20 días",
            ),
            CustomCard(
              title: "Pajaro Esquizo",
              subtitle: "Donde estan las womans",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/236x/1b/e9/19/1be91948bb228ebc114f0e456b1c08f5.jpg",
              mensaje: "27 días",
            ),
            CustomCard(
              title: "Shrek",
              subtitle: "Salgan de mi pantano!",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/474x/71/92/76/719276fb3ef2363ad1d4a6cb39e7530a.jpg",
              mensaje: "1 mes(es)",
            ),
            CustomCard(
              title: "Rosa",
              subtitle: "Cuidadito",
              isSelected: false,
              imagen:
                  "https://i.pinimg.com/474x/6a/c6/ef/6ac6ef1ff804d249c09e155fd80288a0.jpg",
              mensaje: "3 mes(es)",
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
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage("https://i.pinimg.com/736x/2b/86/6b/2b866bffd561064126ed2cc5ce5d60e7.jpg"),
              ),
              label: "Profile"
            ),
          ],
        ),
      ),
    );
  }
}