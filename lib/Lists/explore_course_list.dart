import 'package:e_learning_app/Cards/explore_course_card.dart';
import 'package:flutter/material.dart';

import '../Models/course.dart';

class ExploreCourseList extends StatelessWidget {
  const ExploreCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: exploreCourses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
              child: ExploreCourseCard(
                course: exploreCourses[index],
              ),
            );
          }),
    );
  }
}
