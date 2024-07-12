import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CV/GridHeading.dart';
import 'package:flutter_application_1/widgets/CV/gridContent.dart';
import 'package:flutter_application_1/widgets/CV/lastbox_heading.dart';

import '../../utils/Colors.dart';
import 'heading.dart';

class ResumeBox extends StatelessWidget {
  final double width;
  const ResumeBox({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
         color: ColorManager.displayWidgetColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          resume_heading_widget(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          heading2(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          Flexible(
            flex: 5, // Adjust flex ratios as needed
            child: gridvalues(),
          ),
          Flexible(
            flex: 1, // Smaller flex ratio for smaller containers
            child: Container( // Just for demonstration
              // height: 50,
              width: this.width,
              
              child:Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  final_heading_resume(),
                 Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Work Skill 1"),
                      Text("Work Skill 2"),
                      Text("Work Skill 1"),
      
                      
                      // Add more Text widgets as needed
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Soft Skill 1"),
                      Text("Soft Skill 2"),
                      // Add more Text widgets as needed
                    ],
                  ),
                ),
              ],
            ),
          ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
