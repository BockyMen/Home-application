import 'package:flutter/material.dart';

class barraLateralFija extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(image),
            ),
            if (isMessaged)
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
                      message.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Discord"
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
