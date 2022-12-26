import 'dart:io';

import 'package:flutter/cupertino.dart';
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

  static var sidebarItem = [
    SidebarItem(
      title: 'Home',
      background: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff00aeff),
          Color(0xff0076ff),
        ],
      ),
      icon: Icon(
        Platform.isAndroid ? Icons.home : CupertinoIcons.home,
        color: Colors.white,
      ),
    ),
    SidebarItem(
      title: 'Courses',
      background: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfffa7d75),
          Color(0xffc23d61),
        ],
      ),
      icon: Icon(
        Platform.isAndroid ? Icons.library_books : CupertinoIcons.book_circle,
        color: Colors.white,
      ),
    ),
    SidebarItem(
      title: 'Billing',
      background: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfffad64a),
          Color(0xffea880f),
        ],
      ),
      icon: Icon(
        Platform.isAndroid ? Icons.credit_card : CupertinoIcons.creditcard,
        color: Colors.white,
      ),
    ),
    SidebarItem(
      title: 'Settings',
      background: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff4e62cc),
          Color(0xff202a78),
        ],
      ),
      icon: Icon(
        Platform.isAndroid ? Icons.settings : CupertinoIcons.settings_solid,
        color: Colors.white,
      ),
    ),
  ];
}
