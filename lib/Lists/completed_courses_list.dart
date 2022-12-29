import 'package:e_learning_app/Cards/completed_courses_card.dart';
import 'package:e_learning_app/Cards/continue_watching_card.dart';
import 'package:e_learning_app/Models/course.dart';
import 'package:flutter/material.dart';

class CompletedCoursesList extends StatefulWidget {
  const CompletedCoursesList({super.key});

  @override
  State<CompletedCoursesList> createState() => _CompletedCoursesListState();
}

class _CompletedCoursesListState extends State<CompletedCoursesList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: avoid_types_as_parameter_names
      children: completedCourses.map((course) {
        var index = completedCourses.indexOf(course);
        return Container(
          width: 7,
          height: 7,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index
                ? const Color(0xFF0971FE)
                : const Color(0xFFA6AEBD),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemCount: completedCourses.length,
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0 : 0.5,
                child: CompletedCoursesCard(
                  course: completedCourses[index],
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            controller: PageController(initialPage: 0, viewportFraction: 0.75),
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
