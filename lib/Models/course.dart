import 'package:flutter/material.dart';

class Course {
  Course({
    required this.courseTitle,
    required this.courseSubtitle,
    required this.background,
    required this.illustration,
    this.logo,
  });

  final String courseTitle;
  final String courseSubtitle;
  final LinearGradient background;
  final String illustration;
  String? logo;
}

// Recent Courses
var recentCourses = [
  Course(
    courseTitle: "Flutter for Designers",
    courseSubtitle: "12 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: 'assets/illustrations/illustration-01.png',
    logo: 'assets/logos/flutter-logo.png',
  ),
  Course(
    courseTitle: "Prototyping with ProtoPie",
    courseSubtitle: "10 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFD504F),
        Color(0xFFFF8181),
      ],
    ),
    illustration: 'assets/illustrations/illustration-02.png',
    logo: 'assets/logos/protopie-logo.png',
  ),
  Course(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "22 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00E1EE),
        Color(0xFF001392),
      ],
    ),
    illustration: 'assets/illustrations/illustration-03.png',
    logo: 'assets/logos/swift-logo.png',
  ),
];

// Explore Courses
var exploreCourses = [
  Course(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "22 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF5BCEA6),
        Color(0xFF1997AB),
      ],
    ),
    illustration: 'assets/illustrations/illustration-04.png',
  ),
  Course(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "22 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFA931E5),
        Color(0xFF4B02FE),
      ],
    ),
    illustration: 'assets/illustrations/illustration-05.png',
  ),
];

// Continue Watching Courses
var continueWatchingCourses = [
  Course(
    courseTitle: "React for Designers",
    courseSubtitle: "SVG Animations",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF4E62CC),
        Color(0xFF202A78),
      ],
    ),
    illustration: 'assets/illustrations/illustration-06.png',
  ),
  Course(
    courseTitle: "Animating in Principle",
    courseSubtitle: "Multiple Scrolling",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFA7D75),
        Color(0xFFC23D61),
      ],
    ),
    illustration: 'assets/illustrations/illustration-07.png',
  ),
];

// Course Sections
var courseSections = [
  Course(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "01 Section",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: 'assets/illustrations/illustration-01.png',
  ),
  Course(
    courseTitle: "Flutter for Designers",
    courseSubtitle: "02 Section",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFE477AE),
        Color(0xFFC54284),
      ],
    ),
    illustration: 'assets/illustrations/illustration-08.png',
  ),
  Course(
    courseTitle: "ProtoPie Prototyping",
    courseSubtitle: "03 Section",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFEA7E58),
        Color(0xFFCE4E27),
      ],
    ),
    illustration: 'assets/illustrations/illustration-09.png',
  ),
  Course(
    courseTitle: "UI Design Course",
    courseSubtitle: "04 Section",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF72CFD4),
        Color(0xFF42A0C2),
      ],
    ),
    illustration: 'assets/illustrations/illustration-10.png',
  ),
  Course(
    courseTitle: "React for Designers",
    courseSubtitle: "05 Section",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFF2E56),
        Color(0xFFCB012B),
      ],
    ),
    illustration: 'assets/illustrations/illustration-11.png',
  ),
];

// Completed Courses
var completedCourses = [
  Course(
    courseTitle: "Build an ARKit 2 App",
    courseSubtitle: "Certified",
    background:const  LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFF6B94),
        Color(0xFF6B2E98),
      ],
    ),
    illustration: 'assets/illustrations/illustration-12.png',
  ),
  Course(
    courseTitle: "Swift Advanced",
    courseSubtitle: "Yet to be Certified",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFDEC8FA),
        Color(0xFF4A1B6D),
      ],
    ),
    illustration: 'assets/illustrations/illustration-13.png',
  ),
];
