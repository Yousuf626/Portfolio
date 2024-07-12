
import 'package:flutter/material.dart';

import '../../utils/Colors.dart';

class work_heading_widget extends StatelessWidget {
  const work_heading_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Set border color to black
          width: 1.0, // Set border width
        ),
      ),
      child: Row(
    // return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
               color: ColorManager.displayWidgetColor,
            child: Text(
              "Projects",
              style: TextStyle(
                fontSize: 28, // Adjust the font size here
              ),
            ),
          ),
        ),
        Expanded(flex: 1, child: Container(
             color: ColorManager.displayWidgetColor,
        )),

        Expanded(
          flex: 7,
          child: Align(
            alignment: Alignment.center,
            child: Divider(
              color: Colors.blue, // Set the color to blue
              thickness: 1.0, // Set the thickness to 1
            ),
          ),
        ),
        Expanded(flex: 1, child: Container(
             color: ColorManager.displayWidgetColor,
        )),
      ],
    ),
    );
  }
}
