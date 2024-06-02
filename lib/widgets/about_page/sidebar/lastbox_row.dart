import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';

class box_row_Widget extends StatelessWidget {
  final double width;
  final double height; //max height is 0.52
  final IconData icon;
  final String TopLabel;
  final String BottomLabel;
  const box_row_Widget(
      {super.key,
      required this.width,
      required this.height,
      required this.icon,
      required this.TopLabel,
      required this.BottomLabel,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: this.width * 0.10),
        Row(
          children: [
            Container(
              width: this.width * 0.06, // Adjust the width as needed
              height: this.height * 0.10, // Adjust the height as needed
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(
                  color: Colors.black, // Set border color to black
                  width: 1.0, // Set border width
                ),
              ),

              child: GradientIcon(
                icon: this.icon,
                size: 20,
                gradient: LinearGradient(
                  colors: <Color>[
                    ColorManager.btn_grad_1,
                    ColorManager.btn_grad_1,
                    ColorManager.btn_grad_2
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            SizedBox(
                width: this.width *
                    0.05), // Add some space between the image and labels
            // Column containing two labels
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top label
                Container(
                  width: this.width * 0.30,
                  child: Text(
                    this.TopLabel,
                    style: TextStyle(
                        fontSize: 8), // Adjust the font size as needed
                  ),
                ),
                // Add some space between the labels
                SizedBox(height: this.height * 0.02),
                // Bottom label
                Container(
                  width: this.width * 0.40,
                  child: Text(
                    this.BottomLabel,
                    style: TextStyle(
                        fontSize: 8), // Adjust the font size as needed
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

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Gradient gradient;

  const GradientIcon({
    Key? key,
    required this.icon,
    required this.size,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Icon(
        icon,
        size: size,
        color: Colors
            .white, // This color must be here but it will be overridden by the gradient
      ),
    );
  }
}
