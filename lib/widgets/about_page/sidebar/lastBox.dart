import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Colors.dart';
import 'package:flutter_application_1/widgets/about_page/sidebar/lastbox_row.dart';

class lastbox_widget extends StatelessWidget {
    final double height; // Width parameter
    final double width;
const lastbox_widget({
    super.key,
    required this.width,
    required this.height, // Required width parameter
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: this.height * 0.03,
        ),
        box_row_Widget(width: this.width, height: this.height,img_name: "1.png"),
        SizedBox(
          height: this.height * 0.03,
        ),
        Container(
          width: this.width * 0.50,
           decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(
                      color: ColorManager.backgroundColor1, // Set border color to black
                      width: 1.0, // Set border width
                    ),
                  ),
        ),
      
       SizedBox(
          height: this.height * 0.03,
        ),
        box_row_Widget(width: this.width, height: this.height,img_name: "1.png"),
        SizedBox(
          height: this.height * 0.03,
        ),
        Container(
           width: this.width * 0.50,
           decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(
                      color: ColorManager.backgroundColor1, // Set border color to black
                      width: 1.0, // Set border width
                    ),
                  ),
        ),
      
         SizedBox(
          height: this.height * 0.03,
        ),
        box_row_Widget(width: this.width, height: this.height,img_name: "1.png"),
        SizedBox(
          height: this.height * 0.03,
        ),
        Container(
          width: this.width * 0.50,
           decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(
                      color: ColorManager.backgroundColor1, // Set border color to black
                      width: 1.0, // Set border width
                    ),
                  ),
        ),
         SizedBox(
          height: this.height * 0.03,
        ),
              Container(
  width: width * 0.50,
  height: height * 0.13, // Ensure this height is enough to accommodate the inner padding and text size.
  // decoration: BoxDecoration(
  //   border: Border.all(
  //     color: Colors.black,
  //     width: 1.0,
  //   ),
  // ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          // Ensure the button itself has no intrinsic padding that could push the contents.
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorManager.btn_grad_1,ColorManager.btn_grad_1,ColorManager.btn_grad_1,ColorManager.btn_grad_1, ColorManager.btn_grad_2], // Make sure these colors provide good contrast with white text.
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding to fit text and icon.
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.image, 
                  color: Colors.white,
                  size: 16,
                  ),
                SizedBox(width: 10),
                Text(
                  'Button Text',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    ),

      
      ],
    );
  }
}