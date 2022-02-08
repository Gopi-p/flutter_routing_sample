import 'package:flutter/material.dart';

class MelodySongs extends StatelessWidget {
  const MelodySongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        color: Colors.pink[100],
        child: const Center(
          child: Text(
            "Melody Songs",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
