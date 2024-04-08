
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/SideBar.dart';

import '../widgets/spacebox.dart';

class AboutPage extends StatelessWidget {
  
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            emptyBox(width: screenWidth * 0.05),
            SizedBox(
              width: screenWidth * 0.375,
              child: SideBarWidget(
                width: screenWidth * 0.375,
                height: screenHeight,
              )
            ),
            emptyBox(width: screenWidth * 0.025),
            SizedBox(
              width: screenWidth * 0.50,
              child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Set border color to black
                  width: 1.0, // Set border width
                ),
              ),
              // Add child widgets here if needed
            ),
            ),
            emptyBox(width: screenWidth * 0.05),

          ],
        ),
      ),
    );
  }
  // Widget _buildContainer(double width) {
  // return Expanded(
  //   child: Container(
  //     decoration: BoxDecoration(
  //       border: Border.all(
  //         color: Colors.black,
  //         width: 1.0,
  //       ),
  //     ),
  //     width: width,
  //     // Add child widgets here if needed
  //   ),
  // );
// }
}