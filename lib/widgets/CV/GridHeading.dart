import 'package:flutter/material.dart';

class heading2 extends StatelessWidget {
  const heading2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          
          children: [
            Icon(Icons.school_outlined),
            SizedBox(width: MediaQuery.of(context).size.width * 0.008,),
            Text(
              "Education",
              style: TextStyle(
                fontSize: 28, // Adjust the font size here
              ),
            ),
          ],
        ),
        Row(
          
          children: [
            Icon(Icons.work_outline),
            SizedBox(width: MediaQuery.of(context).size.width * 0.008,),
            Text(
              "Internship",
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
