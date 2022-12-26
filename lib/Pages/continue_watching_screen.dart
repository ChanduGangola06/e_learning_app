import 'package:e_learning_app/Components/certificate_viewer.dart';
import 'package:e_learning_app/Lists/continue_watching_list.dart';
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: ContinueWatchingList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Certificates",
              style: kTitle2Style,
            ),
          ),
          const Expanded(
            child: CertificateViewer(),
          ),
        ],
      ),
    );
  }
}
