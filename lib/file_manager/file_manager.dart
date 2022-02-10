import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class FileManager extends StatelessWidget {
  const FileManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'File Manager',
        style: headingText1,
      ),
    );
  }
}
