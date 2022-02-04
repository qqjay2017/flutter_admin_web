import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/overview_cards_small.dart';

import 'package:flutter_web_dashboard/widgets/page_title.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTitle(),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.ismediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                OverviewCardsMediumScreen()
              else
                OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreen()
          ],
        ))
      ],
    );
  }
}
