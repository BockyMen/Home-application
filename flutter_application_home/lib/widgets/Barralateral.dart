import 'package:flutter/material.dart';

class barraLateralFija extends StatefulWidget {
  final String image;
  final bool isMessaged;
  final int message;

  const barraLateralFija({
    super.key,
    required this.image,
    required this.isMessaged,
    required this.message,
  });

  @override
  State<barraLateralFija> createState() => _barraLateralFijaState();
}

class _barraLateralFijaState extends State<barraLateralFija> {
  late int contador;

  @override
  void initState() {
    super.initState();
    contador = widget.message;
  }

  void aumentarContador() {
    setState(() {
      contador++;
    });
  }

  String getTexto() {
    if (contador >= 10) {
      return "9+";
    }
    return contador.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: aumentarContador,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(widget.image),
              ),
              if (widget.isMessaged)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 18,
                      minHeight: 18,
                    ),
                    child: Center(
                      child: Text(
                        getTexto(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Discord",
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}