import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryDarkColor,
            ),
            tabs: const [
              Tab(text: 'Popular'),
              Tab(text: 'Top Rated'),
              Tab(text: 'Upcoming'),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Popular')),
                Center(child: Text('Top Rated')),
                Center(child: Text('Upcoming')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
