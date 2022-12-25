import 'package:flutter/material.dart';
import '../Models/sidebar.dart';
import '../Components/sidebar_row.dart';
import '../Themes/constants.dart';

class SidebarPage extends StatelessWidget {
  const SidebarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SidebarItem> sidebarItem = SidebarItem.sidebarItem;

    return Container(
      decoration: const BoxDecoration(
        color: kSidebarBackgroundolor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  radius: 21,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sai Kishore',
                      style: kHeadlineLabelStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'License ends on 21 Jan, 2022',
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                ),
              ],
            ),
            // ignore: unused_local_variable
            for (final item in sidebarItem)
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            SidebarRow(
              item: sidebarItem[0],
            ),
            const SizedBox(height: 32.0),
            SidebarRow(
              item: sidebarItem[1],
            ),
            const SizedBox(height: 32.0),
            SidebarRow(
              item: sidebarItem[2],
            ),
            const SizedBox(height: 32.0),
            SidebarRow(
              item: sidebarItem[3],
            ),
            const SizedBox(height: 32.0),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'assets/icons/icon-logout.png',
                  width: 17,
                ),
                const SizedBox(width: 12),
                Text(
                  'Log out',
                  style: kSecondaryCalloutLabelStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
