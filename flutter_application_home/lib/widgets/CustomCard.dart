import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isSelected;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isSelected,
  }); 

@override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: isSelected ? const Color.fromARGB(31, 99, 99, 99) : const Color.fromARGB(100, 15, 16, 20),
      child: ListTile(
        leading: Icon(icon, size: 32, color: const Color(0xFF868690)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF868690)),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.close),
      ),
    );
  }
}