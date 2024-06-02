
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/about_page/sidebar/SideBar.dart';

import '../utils/Colors.dart';
import '../widgets/about_page/main_widget/main_box.dart';
import '../widgets/spacebox.dart';

class AboutPage extends StatelessWidget {
  
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
         color: ColorManager.backgroundColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            emptyBox(width: screenWidth * 0.05),
            SizedBox(
              
              child: SideBarWidget(
                width: screenWidth * 0.275,
                height: screenHeight,
              )
            ),
            emptyBox(width: screenWidth * 0.025),
            SizedBox(
              child: MainBox_Widget(
                width: screenWidth * 0.60,
                height: screenHeight,
              ),
            ),
            emptyBox(width: screenWidth * 0.05),
        
          ],
               
        ),
      ),
    );
  }
  
}