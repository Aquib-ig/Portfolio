import 'package:flutter/material.dart';
import 'package:portfolio/routes/app_routes.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(title: "Home" ,path: AppRoutes.home),
      AppMenu(title: "About Me", path: AppRoutes.projects),
      AppMenu(title: "Projects", path: AppRoutes.aboutMe),
      AppMenu(title: "Contact", path: AppRoutes.contact),
    ];
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}
