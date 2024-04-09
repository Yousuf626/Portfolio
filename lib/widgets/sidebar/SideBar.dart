import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/sidebar/sidebarRowItem.dart';

import '../../utils/contactInfo.dart';
import 'linksWidget.dart';
import 'sideBarLastWidget.dart';

class SideBarWidget extends StatelessWidget {
  SideBarWidget({super.key, this.width, this.height});
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
     double bluecontainerHeight = this.height! * 0.80;
    final DataContainer dataContainer = DataContainer();
    List<MyData> mydata = dataContainer.dataList;
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
            height: this.height! * 0.80,
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
                    )),
                SizedBox(
                  height: this.height! * 0.03,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(
                        color: Colors.black, // Set border color to black
                        width: 1.0, // Set border width
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: this.height! / 30,
                        ),
                        for (int i = 0; i < 3; i++)
                          Column(
                            children: [
                              listItem(
                                width: this.width,
                                height: bluecontainerHeight,
                                imageName: "${i + 1}",
                                heading: "${mydata[i].heading}",
                                subHeading: "${mydata[i].subheading}",
                              ),
                              SizedBox(
                                height: this.height! / 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: bluecontainerHeight / 30,
                              // ),
                            ],
                          ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              disabledForegroundColor: Colors.blue, // Background color
                              foregroundColor: Colors.white, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                              ),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // Button padding
                              
                              elevation: 4, // Elevation
                              shadowColor: Colors.grey, // Shadow color
                              minimumSize: Size(150, 20), // Minimum button size
                            ),
                            onPressed: () {
                              print("button pressed");
                            },
                            child: Text('Elevated Button'),
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
