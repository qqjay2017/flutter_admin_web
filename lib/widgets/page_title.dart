import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(
                text: menuController.activeItem.value,
                size: 24,
                weight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
