import 'package:flutter/material.dart';

import '../Models/sidebar.dart';

class SidebarRow extends StatelessWidget {
  final SidebarItem item;
  const SidebarRow({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: item.background,
          ),
          child: item.icon,
        ),
        const SizedBox(width: 12),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Text(
            item.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color(0xff242629),
            ),
          ),
        ),
      ],
    );
  }
}
