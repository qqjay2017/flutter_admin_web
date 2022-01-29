import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itenName;
  final void Function()? onTap;
  const HorizontalMenuItem(
      {Key? key, required this.itenName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itenName)
            : menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itenName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itenName),
                  child: Container(
                    child: Container(
                      width: 6,
                      height: 40,
                      color: darke,
                    ),
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                SizedBox(
                  width: _width / 80,
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(itenName),
                ),
                if (!menuController.isActive(itenName))
                  Flexible(
                    child: CustomText(
                      text: itenName,
                      color: menuController.isHovering(itenName)
                          ? darke
                          : lightGrey,
                    ),
                  )
                else
                  Flexible(
                    child: CustomText(
                      text: itenName,
                      color: darke,
                      size: 18,
                      weight: FontWeight.bold,
                    ),
                  )
              ],
            ),
          )),
    );
  }
}
