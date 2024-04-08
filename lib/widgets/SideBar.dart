import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SideBarWidget extends StatelessWidget {
   SideBarWidget({super.key, this.width,this.height});
   double? width;
   double? height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: this.width,
          height: this.height,
          decoration: BoxDecoration(
            color: Colors.red,
                border: Border.all(
                  color: Colors.red, // Set border color to black
                  width: 1.0, // Set border width
                ),
              ),
        ),
        Positioned(
          top:110,
          child: Container(
            width: this.width,
            height: this.height,
            decoration: BoxDecoration(
              color: Colors.blue,
                  border: Border.all(
                    color: Colors.red, // Set border color to black
                    width: 1.0, // Set border width
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Text("data"),
                  ],
                  ),
          ),
        ),
        Positioned(
          left: 170,
          top: 40,
          child: Container(
            height: this.height! * 0.25,
            width: this.width! * 0.30,
            decoration: BoxDecoration(
              color: Colors.white,
                  border: Border.all(
                    color: Colors.white, // Set border color to black
                    width: 1.0, // Set border width
                  ),
                ),
          ),
        )

      ],
    );
  }
}