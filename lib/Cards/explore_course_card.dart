import 'package:e_learning_app/Models/course.dart';
import 'package:e_learning_app/Themes/constants.dart';
import 'package:flutter/material.dart';

class ExploreCourseCard extends StatelessWidget {
  final Course course;
  const ExploreCourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41),
        child: Container(
          height: 120,
          width: 280,
          decoration: BoxDecoration(
            gradient: course.background,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      ),
                    ],
                  ),
                ),

                //
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      // ignore: unnecessary_string_interpolations
                      '${course.illustration}',
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
