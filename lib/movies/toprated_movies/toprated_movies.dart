import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class TopRatedMovies extends StatelessWidget {
  const TopRatedMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("MOVIE BUILD { TopRatedMovies }");
    return Center(
      child: Text(
        'Top Rated Movies',
        style: headingText1,
      ),
    );
  }
}
