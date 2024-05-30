import 'package:flutter/material.dart';

class box_row_Widget extends StatelessWidget {
  final double width;
  final double height;//max height is 0.52
  const box_row_Widget({super.key,required this.width,required this.height});

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
          '1.png',
        ),
      ),
      SizedBox(width: this.width * 0.05), // Add some space between the image and labels
      // Column containing two labels
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top label
          Container(
            width: this.width * 0.10,
            child: Text(
              'Top Label',
              style: TextStyle(fontSize: 8), // Adjust the font size as needed
            ),
          ),
          // Add some space between the labels
          SizedBox(height: this.height * 0.02),
          // Bottom label
          Container(
            width: this.width * 0.15,
            child: Text(
              'Bottom Label',
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