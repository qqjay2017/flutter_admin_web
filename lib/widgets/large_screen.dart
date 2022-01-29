import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
