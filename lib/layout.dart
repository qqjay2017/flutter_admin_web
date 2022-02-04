import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/large_screen.dart';
import 'package:flutter_web_dashboard/widgets/side_menu.dart';
import 'package:flutter_web_dashboard/widgets/small_screen.dart';
import 'package:flutter_web_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldState),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
