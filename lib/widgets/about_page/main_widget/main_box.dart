import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'content_box.dart';
import 'navbar.dart';

class MainBox_Widget extends StatelessWidget {
  MainBox_Widget({super.key, this.width, this.height});
  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Set border color to black
          width: 1.0, // Set border width
        ),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set border color to black
                    width: 1.0, // Set border width
                  ),
                ),
              )),
          Expanded(
              //main box is here
              flex: 8,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: this.height! * 0.1,
                    ),
                    Row(
                      children: [
                        Expanded(flex: 3, child: Container()),
                        Expanded(
                            flex: 7,
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors
                                        .black, // Set border color to black
                                    width: 1.0, // Set border width
                                  ),
                                ),
                                child: NavigationBar_widget())),
                      ],
                    ),
                    SizedBox(
                      height: this.height! * 0.05,
                    ),
                    Expanded(child: Container(child: Column(
                      children: [
                        content_widget(),
                        Align(alignment: Alignment.centerLeft,child: Text("hello")),
                      ],
                    ))),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set border color to black
                    width: 1.0, // Set border width
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
