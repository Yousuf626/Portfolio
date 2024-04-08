import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/sidebar/sidebarRowItem.dart';

import 'linksWidget.dart';

class SideBarWidget extends StatelessWidget {
  SideBarWidget({super.key, this.width, this.height});
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
          top: height! * 0.20,
          child: Container(
            width: this.width,
            height: this.height,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue, // Set border color to black
                width: 1.0, // Set border width
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: this.height! * 0.17,
                ),
                Text("data"),
                SizedBox(
                  height: this.height! * 0.03,
                ),
                Text("data"),
                SizedBox(
                  height: this.height! * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black, // Set border color to black
                      width: 1.0, // Set border width
                    ),
                  ),
                  child: linksWidget(
                    width: this.width,
                    height: this.height,
                  )
                ),
                Container(
                   decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black, // Set border color to black
                      width: 1.0, // Set border width
                    ),
                  ),
                  child: Text("dsd")
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: height! * 0.10,
          left: width! * 0.35,
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
