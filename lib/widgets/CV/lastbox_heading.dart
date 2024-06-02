import 'package:flutter/material.dart';

class final_heading_resume extends StatelessWidget {

  const final_heading_resume({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          
          children: [
            // Icon(Icons.school_outlined),
            // SizedBox(width: MediaQuery.of(context).size.width * 0.008,),
            Text(
              "Work Skills",
              style: TextStyle(
                fontSize: 28, // Adjust the font size here
              ),
            ),
          ],
        ),
        Row(
          
          children: [
            // Icon(Icons.work_outline),
            // SizedBox(width: MediaQuery.of(context).size.width * 0.008,),
            Text(
              "Soft Skills  ",
              style: TextStyle(
                fontSize: 28, // Adjust the font size here
              ),
            ),
          ],
        ),
      ],
    );
  }
}