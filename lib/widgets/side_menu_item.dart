import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:flutter_web_dashboard/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
