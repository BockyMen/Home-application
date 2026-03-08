import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;
  final String imagen;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: isSelected
          ? const Color.fromARGB(31, 99, 99, 99)
          : const Color.fromARGB(100, 15, 16, 20),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(imagen)),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF868690),
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.close),
      ),
    );
  }
}

class UserNotification extends StatelessWidget {
  final String imagen;
  final String title;
  final String title2;

  const UserNotification({
    super.key,
    required this.imagen,
    required this.title,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 12, 11, 16),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: 70,
              height: double.infinity, // Este se utiliza para que la imagen ocupe todo el espacio del widghet, no se como sirve exactamente, pero lo funciono xd.
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 30, 36),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color:Color.fromARGB(255, 31, 30, 36),
                  width: 5,
                ),
                image: DecorationImage(
                  image: NetworkImage(imagen),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded( // Se utiliza para que los textos ocupen todo el espacio disponible que tienen
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title2,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.volume_up, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
