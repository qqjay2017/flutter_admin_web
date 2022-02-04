import 'package:flutter/material.dart';

import 'package:flutter_web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            topColor: Colors.orange,
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Rides in progress2',
            value: '72',
            topColor: Colors.lightGreen,
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Rides in progress3',
            value: '73',
            topColor: Colors.redAccent,
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Rides in progress4',
            value: '74',
            topColor: Colors.redAccent,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
