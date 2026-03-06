import 'package:flutter/material.dart';

class Barralateral extends StatelessWidget{
  final IconData icon;
  final Color? backgroundColor;

  const Barralateral({
    super.key,
    required this.icon,
    required this.backgroundColor,
  }); 

@override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: ListTile(
        leading: Icon(icon, size: 32),
      ),
    );
  }
}