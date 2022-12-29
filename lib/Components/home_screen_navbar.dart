import 'package:e_learning_app/Components/search_field_widget.dart';
import 'package:e_learning_app/Components/sidebar_button.dart';
import 'package:e_learning_app/Pages/profile_page.dart';
import 'package:e_learning_app/Themes/constants.dart';
import 'package:flutter/material.dart';

class HomeScreenNavBar extends StatelessWidget {
  final VoidCallback triggerAnimation;
  const HomeScreenNavBar({super.key, required this.triggerAnimation});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SidebarButton(
              triggerAnimation: triggerAnimation,
            ),
            const SearchFieldWidget(),
            const Icon(
              Icons.notifications,
              color: kPrimaryLabelColor,
            ),
            const SizedBox(width: 16.0),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: const CircleAvatar(
                  radius: 18.0,
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
