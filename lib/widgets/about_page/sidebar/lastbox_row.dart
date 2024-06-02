import 'package:flutter/material.dart';

class box_row_Widget extends StatelessWidget {
  final double width;
  final String img_name;
  final double height;//max height is 0.52
  const box_row_Widget({super.key,required this.width,required this.height,required this.img_name});

  @override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(width: this.width * 0.10),
      Row(
        children: [    
      Container(
        width: this.width * 0.05, // Adjust the width as needed
          height: this.height * 0.10, // Adjust the height as needed
                    decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(
                      color: Colors.black, // Set border color to black
                      width: 1.0, // Set border width
                    ),
                  ),

        child: Image.asset(
          this.img_name,
        ),
      ),
      SizedBox(width: this.width * 0.05), // Add some space between the image and labels
      // Column containing two labels
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top label
          Container(
            width: this.width * 0.30,
            child: Text(
              'location',
              style: TextStyle(fontSize: 8), // Adjust the font size as needed
            ),
          ),
          // Add some space between the labels
          SizedBox(height: this.height * 0.02),
          // Bottom label
          Container(
            width: this.width * 0.40,
            child: Text(
              's.ali.22987@khi.iba.edu.pk',
              style: TextStyle(fontSize: 8), // Adjust the font size as needed
            ),
          ),
          
        ],
      ),
        ],
      ),
      SizedBox(width: this.width * 0.10),
    ],
  );
}
}