import 'package:flutter/material.dart';

class SidebarItem {
  final String title;
  final LinearGradient background;
  final Icon icon;

  const SidebarItem({
    required this.title,
    required this.background,
    required this.icon,
  });

  static const sidebarItem = [
    SidebarItem(
      title: 'Home',
      background: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff00aeff),
          Color(0xff0076ff),
        ],
      ),
      icon: Icon(
        Icons.home,
        color: Colors.white,
      ),
    ),
    SidebarItem(
      title: 'Courses',
      background: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfffa7d75),
          Color(0xffc23d61),
        ],
      ),
      icon: Icon(
        Icons.library_books,
        color: Colors.white,
      ),
    ),
    SidebarItem(
      title: 'Billing',
      background: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfffad64a),
          Color(0xffea880f),
        ],
      ),
      icon: Icon(
        Icons.credit_card,
        color: Colors.white,
      ),
    ),
    SidebarItem(
      title: 'Settings',
      background: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff4e62cc),
          Color(0xff202a78),
        ],
      ),
      icon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
    ),
  ];
}
