import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instalce = Get.find();
  var activeItem = OverViewPageRoute.obs;
  var hoverItem = ''.obs;

  changeActiveitemTo(String itenName) {
    activeItem.value = itenName;
  }

  onHover(String itenName) {
    if (!isActive(itenName)) {
      hoverItem.value = itenName;
    }
  }

  isActive(String itenName) => activeItem.value == itenName;
  isHovering(String itenName) => hoverItem.value == itenName;

  Widget returnIconFor(String itenName) {
    switch (itenName) {
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itenName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itenName);
      case ClientsiewPageRoute:
        return _customIcon(Icons.people_alt_outlined, itenName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itenName);
      default:
        return _customIcon(Icons.exit_to_app, itenName);
    }
  }

  Widget _customIcon(IconData icon, String itenName) {
    if (isActive(itenName)) {
      return Icon(
        icon,
        size: 22,
        color: darke,
      );
    }
    return Icon(
      icon,
      size: 22,
      color: isHovering(itenName) ? darke : lightGrey,
    );
  }
}
