import 'package:e_learning_app/Cards/course_section_card.dart';
import 'package:e_learning_app/Models/course.dart';
import 'package:e_learning_app/Themes/constants.dart';
import 'package:flutter/material.dart';

class CourseSectionList extends StatelessWidget {
  const CourseSectionList({super.key});

  List<Widget> courseSectionWidgets() {
    List<Widget> cards = [];
    for (var course in courseSections) {
      cards.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CourseSectionCard(course: course),
        ),
      );
    }

    cards.add(
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          "No more Sections to view, look\n for more in our courses",
          style: kCaptionLabelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: courseSectionWidgets(),
      ),
    );
  }
}
