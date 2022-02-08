import 'package:flutter/material.dart';

class FolkSongs extends StatelessWidget {
  const FolkSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        color: Colors.green[100],
        child: const Center(
          child: Text(
            "Folk Songs",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
