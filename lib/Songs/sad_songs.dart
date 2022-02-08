import 'package:flutter/material.dart';

class SadSongs extends StatelessWidget {
  const SadSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        color: Colors.blue[100],
        child: const Center(
          child: Text(
            "Sad Songs",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
