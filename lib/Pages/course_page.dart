import 'dart:io';

import 'package:e_learning_app/Lists/course_section_list.dart';
import 'package:e_learning_app/Models/course.dart';
import 'package:e_learning_app/Themes/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CoursePage extends StatefulWidget {
  final Course course;
  const CoursePage({super.key, required this.course});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Widget indicators() {
    List<Widget> indicators = [];

    for (var i = 0; i < 9; i++) {
      indicators.add(
        Container(
          width: 7,
          height: 7,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == 0 ? const Color(0xff0971FE) : const Color(0xffa6aebd),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  late PanelController panelController;

  @override
  void initState() {
    super.initState();
    panelController = PanelController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: SlidingUpPanel(
          controller: panelController,
          backdropEnabled: true,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(34),
            topRight: Radius.circular(34),
          ),
          color: kCardPopupBackgroundColor,
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, -12),
              blurRadius: 32,
            ),
          ],
          minHeight: 0.0,
          maxHeight: MediaQuery.of(context).size.height * 0.90,
          panel: const CourseSectionPage(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          gradient: widget.course.background,
                        ),
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: SafeArea(
                        bottom: false,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Hero(
                                          tag: widget.course.logo!,
                                          child: Image.asset(
                                              '${widget.course.logo}')),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Hero(
                                            tag: widget.course.courseSubtitle,
                                            child: Text(
                                              widget.course.courseSubtitle,
                                              style: kSecondaryCalloutLabelStyle
                                                  .copyWith(
                                                      color: Colors.white70),
                                            ),
                                          ),
                                          Hero(
                                            tag: widget.course.courseTitle,
                                            child: Text(
                                              widget.course.courseTitle,
                                              style: kLargeTileStyle.copyWith(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: kPrimaryLabelColor
                                              .withOpacity(0.8),
                                        ),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 28),
                              Expanded(
                                child: Hero(
                                  tag: widget.course.illustration,
                                  child: Image.asset(
                                    // ignore: unnecessary_string_interpolations
                                    '${widget.course.illustration}',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 12.5,
                          bottom: 13.5,
                          left: 20.5,
                          right: 14.5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                              color: kShadowColor,
                              blurRadius: 16,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/icons/icon-play.png'),
                      ),
                    ),
                  ],
                ),

                //
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                    top: 12,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              gradient: widget.course.background,
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  borderRadius: BorderRadius.circular(29),
                                ),
                                child: CircleAvatar(
                                  radius: 21,
                                  backgroundColor: kCourseElementIconColor,
                                  child: Icon(
                                    Platform.isAndroid
                                        ? Icons.people
                                        : CupertinoIcons.group_solid,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '28.7K',
                                style: kTitle2Style,
                              ),
                              Text(
                                'Students',
                                style: kSearchPlaceholderStyle,
                              ),
                            ],
                          ),
                        ],
                      ),

                      //
                      Row(
                        children: [
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              gradient: widget.course.background,
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  borderRadius: BorderRadius.circular(29),
                                ),
                                child: CircleAvatar(
                                  radius: 21,
                                  backgroundColor: kCourseElementIconColor,
                                  child: Icon(
                                    Platform.isAndroid
                                        ? Icons.format_quote
                                        : CupertinoIcons.news_solid,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '12.4K',
                                style: kTitle2Style,
                              ),
                              Text(
                                'Comments',
                                style: kSearchPlaceholderStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      indicators(),
                      GestureDetector(
                        onTap: () {
                          panelController.open();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 12),
                                blurRadius: 16,
                              )
                            ],
                            borderRadius: BorderRadius.circular(14),
                          ),
                          width: 80,
                          height: 40,
                          child: Text(
                            "View all",
                            style: kSearchTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "5 years ago, I couldn't write a single line of flutter. I learned it and moved it",
                        style: kBodyLabelStyle,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'About this course',
                        style: kTitle1Style,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                          'This course was written for people who are passionate about coding'),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseSectionPage extends StatelessWidget {
  const CourseSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              color: kCardPopupBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                bottomLeft: Radius.circular(34),
              ),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12),
                  blurRadius: 32,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Course Sections',
                  style: kSubtitleStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  "12 Secctions",
                  style: kSubtitleStyle,
                ),
              ],
            ),
          ),
          const CourseSectionList(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
