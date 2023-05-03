import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
    alignment: const Alignment(0.9, -0.5),
    children: [
      Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Wenderson O 👋',
                style: TextStyle( height: 6, color: Colors.white, fontSize: 20),
              ),
              const SizedBox( 
                width: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'what do you want to watch?',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ), 
      const CircleAvatar(
        backgroundImage: AssetImage('images/one.png'),
        radius: 50,
      ),
      Container(
        decoration: const BoxDecoration(
        ),
        child: const Text(
          'Wenderson O',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 13,
          ),
        ),
      ),
      ],
    );
  }
}