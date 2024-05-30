import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/about_page/sidebar/sidebarRowItem.dart';

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
                SizedBox(
                  height: this.height! * 0.03,
                ),
                Container(
                  width: this.width,
                  height: this.height! * 0.52,
                   decoration: BoxDecoration(
                    color: Colors.red,
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
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.yellow, // Set border color to black
                              width: 1.0, // Set border width
                            ),
                          ),
                        ),
                      ),
                       Expanded(
                        flex: 6, // Set flex factor to 2 (80%)
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Set border color to black
                              width: 1.0, // Set border width
                            ),
                          ),
                          child: lastbox_widget(height: this.height! * 0.52,width: this.width!,),
                        ),
                      ),
                      Expanded(
                        flex: 2, // Set flex factor to 8 (20%)
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.pink, // Set border color to black
                              width: 1.0, // Set border width
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  )

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
