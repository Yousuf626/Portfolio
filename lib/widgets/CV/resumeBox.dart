import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CV/GridHeading.dart';
import 'package:flutter_application_1/widgets/CV/gridContent.dart';
import 'package:flutter_application_1/widgets/CV/lastbox_heading.dart';

import 'heading.dart';

class ResumeBox extends StatelessWidget {
  final double width;
  const ResumeBox({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Container(
            color: Colors.red, // Just for demonstration
            // height: 50,
            width: this.width,
            
            child:Column(
              children: [
                final_heading_resume(),
                Row(children: [
                  
                ],)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
