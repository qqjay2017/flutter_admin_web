import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: 'Rides in progress',
          value: '7',
          topColor: Colors.orange,
          onTap: () {},
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: 'Rides in progress2',
          value: '72',
          topColor: Colors.lightGreen,
          onTap: () {},
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: 'Rides in progress3',
          value: '73',
          topColor: Colors.redAccent,
          onTap: () {},
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: 'Rides in progress4',
          value: '74',
          topColor: Colors.redAccent,
          onTap: () {},
        ),
      ],
    );
  }
}
