import 'package:e_learning_app/Pages/course_page.dart';
import 'package:flutter/material.dart';

import '../Cards/recent_course_card.dart';
import '../Models/course.dart';

class RecentCourseList extends StatefulWidget {
  const RecentCourseList({super.key});

  @override
  State<RecentCourseList> createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  List<Container> indiators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCourses.map(
        (course) {
          var index = recentCourses.indexOf(course);
          return Container(
            width: 7,
            height: 7,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index
                  ? const Color(0xff0971fe)
                  : const Color(0xffa6aebd),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            itemCount: recentCourses.length,
            itemBuilder: (context, index) {
              
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CoursePage(
                        course: recentCourses[index],
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: Opacity(
                  opacity: currentPage == index ? 1.0 : 0.5,
                  child: RecentCourseCard(
                    course: recentCourses[index],
                  ),
                ),
              );
            },
            
            controller: PageController(initialPage: 0, viewportFraction: 0.63),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
