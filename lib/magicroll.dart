import 'package:flutter/material.dart';
import 'dart:math';

class MagicRoll extends StatefulWidget {
  const MagicRoll({super.key});

  @override
  State<MagicRoll> createState() => _MagicRollState();
}

class _MagicRollState extends State<MagicRoll> {
  int roll = 1;

  void rollBall() {
    setState(() {
      roll = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(246, 249, 97, 102),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 249, 97, 102),
          title: const Center(
            child: Text(
              'MAGIC 8 BALL',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 70.0),
                child: Text(
                  'ASK ME ANYTHING !!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              TextButton(
                onPressed: rollBall,
                child: Image.asset('assets/images/ball$roll.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
