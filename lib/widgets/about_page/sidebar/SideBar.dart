import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/about_page/sidebar/sidebarRowItem.dart';

import '../../../utils/Colors.dart';
import 'lastBox.dart';
import 'linksWidget.dart';

class SideBarWidget extends StatelessWidget {
  SideBarWidget({super.key, this.width, this.height});
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    // print(this.width);
    return Stack(
      children: [
        Container(
          width: this.width,
          height: this.height,
          decoration: BoxDecoration(
            color: ColorManager.backgroundColor,
            // color: Colors.red,
            // border: Border.all(
            //   color: Colors.red, // Set border color to black
            //   width: 1.0, // Set border width
            // ),
          ),
        ),
        Positioned(
          top: height! * 0.15,
          child: Container(
            width: this.width,
            height: this.height,
            decoration: BoxDecoration(
              color: ColorManager.displayWidgetColor,
               borderRadius: BorderRadius.circular(20), // Border radius
              // border: Border.all(
              //   color: Colors.blue, // Set border color to black
              //   width: 1.0, // Set border width
              // ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: this.height! * 0.17,
                ),
                Text("Syed Yousuf Ali",
                    style: TextStyle(
                      fontSize: 24.0, // Increase the font size as desired
                      fontWeight:
                          FontWeight.bold, // Set the font weight to bold
                    )),
                SizedBox(
                  height: this.height! * 0.03,
                ),
                Text("Full Stack Developer",
                    style: TextStyle(
                      color: ColorManager.textPrimaryColor,
                      fontSize: 16.0, // Increase the font size as desired
                      fontWeight:
                          FontWeight.w100, // Set the font weight to bold
                    )),
                SizedBox(
                  height: this.height! * 0.05,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.black, // Set border color to black
                      //   width: 1.0, // Set border width
                      // ),
                    ),
                    child: linksWidget(
                      width: this.width,
                      height: this.height,
                    )),
                SizedBox(
                  height: this.height! * 0.03,
                ),
                Container(
                    width: this.width,
                    height: this.height! * 0.37,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      // border: Border.all(
                      //   color: Colors.black, // Set border color to black
                      //   width: 1.0, // Set border width
                      // ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2, // Set flex factor to 2 (80%)
                          child: Container(
                           color: ColorManager.displayWidgetColor,
                          ),
                        ),
                        Expanded(
                          flex: 16, // Set flex factor to 2 (80%)
                          child: Container(
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20), // Border radius
                              color: ColorManager.backgroundColor,
                              // border: Border.all(
                              //   color: Colors.blue, // Set border color to black
                              //   width: 1.0, // Set border width
                              // ),
                            ),
                            child: lastbox_widget(
                              height: this.height! * 0.45,
                              width: this.width!,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2, // Set flex factor to 8 (20%)
                          child: Container(
                           color: ColorManager.displayWidgetColor,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          top: height! * 0.10,
          left: width! * 0.35,
          child: Container(
            height: this.height! * 0.20,
            width: this.width! * 0.30,
            decoration: BoxDecoration(
              // color: Colors.black,
              border: Border.all(
                color: Colors.white, // Set border color to black
                width: 1.0, // Set border width
              ),
            ),
            child: Image.asset(
              'profile.jpg', // Replace with the path to your image
              fit: BoxFit.cover, // Ensure the image fills the container
            ),
          ),
        )
      ],
    );
  }
}
