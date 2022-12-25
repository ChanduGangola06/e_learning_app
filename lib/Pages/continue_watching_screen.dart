import 'package:e_learning_app/Models/course.dart';
import 'package:e_learning_app/Themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ContinueWatchingPage extends StatelessWidget {
  const ContinueWatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(34),
      ),
      color: kCardPopupBackgroundColor,
      boxShadow: const [
        BoxShadow(
          color: kShadowColor,
          offset: Offset(0, -12),
          blurRadius: 32,
        ),
      ],
      minHeight: 85,
      maxHeight: MediaQuery.of(context).size.height * 0.7,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 16),
              child: Container(
                width: 42,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xffc5cbd6),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Text('This is the sliding widget'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Continue Watching",
              style: kTitle2Style,
            ),
          ),
          ContinueWatchingCard(
            course: continueWatchingCourses[0],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Certificates",
              style: kTitle2Style,
            ),
          ),
        ],
      ),
    );
  }
}

class ContinueWatchingCard extends StatelessWidget {
  final Course course;
  const ContinueWatchingCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                gradient: course.background,
                borderRadius: BorderRadius.circular(41),
                boxShadow: [
                  BoxShadow(
                    color: course.background.colors[0].withOpacity(0.3),
                    offset: const Offset(0, 20),
                    blurRadius: 30,
                  ),
                  BoxShadow(
                    color: course.background.colors[1].withOpacity(0.3),
                    offset: const Offset(0, 20),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(41),
                child: Container(
                  height: 140,
                  width: 260,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                // ignore: unnecessary_string_interpolations
                                '${course.illustration}',
                                fit: BoxFit.cover,
                                height: 110,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(32),
                        child: Column(
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
                    ],
                  ),
                ),
              ),
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.only(right: 42),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 4),
                    blurRadius: 16,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),
              child: Image.asset('${course.logo}'),
            ),
          ),
        ],
      ),
    );
  }
}
