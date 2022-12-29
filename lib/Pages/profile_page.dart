import 'dart:io';

import 'package:e_learning_app/Cards/completed_courses_card.dart';
import 'package:e_learning_app/Components/certificate_viewer.dart';
import 'package:e_learning_app/Lists/completed_courses_list.dart';
import 'package:e_learning_app/Models/course.dart';
import 'package:e_learning_app/Themes/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> badges = [
    'assets/badges/badge-01.png',
    'assets/badges/badge-02.png',
    'assets/badges/badge-03.png',
    'assets/badges/badge-04.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: kCardPopupBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(34),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 32,
                  ),
                ],
              ),
              child: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                        bottom: 32,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            constraints: const BoxConstraints(
                              minWidth: 40,
                              maxWidth: 40,
                              maxHeight: 24,
                            ),
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.arrow_back,
                                  color: kSecondaryLabelColor,
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Profile',
                            style: kCalloutLabelStyle,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: const [
                                BoxShadow(
                                  color: kShadowColor,
                                  offset: Offset(0, 12),
                                  blurRadius: 32,
                                ),
                              ],
                            ),
                            child: Icon(
                              Platform.isAndroid
                                  ? Icons.settings
                                  : CupertinoIcons.settings_solid,
                              color: kSecondaryLabelColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          // ignore: avoid_unnecessary_containers
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                              gradient: const RadialGradient(
                                colors: [
                                  Color(0xFF00AEFF),
                                  Color(0xFF0076FF),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(42),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  borderRadius: BorderRadius.circular(42),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/profile.jpg'),
                                  radius: 30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sai Kishore',
                                style: kTitle2Style,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Flutter Developer",
                                style: kSecondaryCalloutLabelStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Badges",
                                  style: kHeadlineLabelStyle,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'See All',
                                      style: kSearchPlaceholderStyle,
                                    ),
                                    const Icon(
                                      Icons.chevron_right,
                                      color: kSecondaryLabelColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    const SizedBox(height: 16),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 112,
                      child: ListView.builder(
                          padding: const EdgeInsets.only(bottom: 28),
                          scrollDirection: Axis.horizontal,
                          itemCount: badges.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: index != 3 ? 0 : 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: kShadowColor.withOpacity(0.1),
                                    offset: const Offset(0, 12),
                                    blurRadius: 18,
                                  ),
                                ],
                              ),
                              child: Image.asset('${badges[index]}'),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),

            //
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 20,
                right: 20,
                bottom: 12,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Certificates',
                        style: kHeadlineLabelStyle,
                      ),
                      Row(
                        children: [
                          Text(
                            'See All',
                            style: kSearchPlaceholderStyle,
                          ),
                          const Icon(
                            Icons.chevron_right,
                            color: kSecondaryLabelColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CertificateViewer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 12,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Completed Courses',
                        style: kHeadlineLabelStyle,
                      ),
                      Row(
                        children: [
                          Text(
                            'See All',
                            style: kSearchPlaceholderStyle,
                          ),
                          const Icon(
                            Icons.chevron_right,
                            color: kSecondaryLabelColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //
            const CompletedCoursesList(),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
