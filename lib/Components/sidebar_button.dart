import 'package:flutter/material.dart';

import '../Themes/constants.dart';

class SidebarButton extends StatelessWidget {
  final VoidCallback triggerAnimation;
  const SidebarButton({
    Key? key,
    required this.triggerAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.black,
      constraints: const BoxConstraints(
        maxWidth: 40,
        maxHeight: 40,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 12),
              blurRadius: 16,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
        child: Image.asset(
          'assets/icons/icon-sidebar.png',
          color: kPrimaryLabelColor,
        ),
      ),
    );
  }
}
