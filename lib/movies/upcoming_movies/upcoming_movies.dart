import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class UpcomingMovies extends StatelessWidget {
  const UpcomingMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("MOVIE BUILD { Upcoming movies }");
    return Center(
      child: Text(
        'Upcoming Movies',
        style: headingText1,
      ),
    );
  }
}
