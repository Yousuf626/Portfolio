import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'content_box.dart';
import 'grid_with_rows.dart';
import 'navbar.dart';

class MainBox_Widget extends StatelessWidget {
  MainBox_Widget({super.key, this.width, this.height});
  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    List<ContentItem> items = [
      ContentItem(
        imagePath: 'assets/image1.png',
        heading: 'Heading 1',
        content: 'This is the paragraph content for tile 1.',
      ),
      ContentItem(
        imagePath: 'assets/image2.png',
        heading: 'Heading 2',
        content: 'This is the paragraph content for tile 2.',
      ),
      ContentItem(
        imagePath: 'assets/image3.png',
        heading: 'Heading 3',
        content: 'This is the paragraph content for tile 3.',
      ),
      ContentItem(
        imagePath: 'assets/image4.png',
        heading: 'Heading 4',
        content: 'This is the paragraph content for tile 4.',
      ),
    ];
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
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Colors.black, // Set border color to black
          //           width: 1.0, // Set border width
          //         ),
          //       ),
          //     )),
          Expanded(
              //main box is here
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    // Expanded(flex: 1, child: Container()),
                    // SizedBox(
                    //   height: this.height! * 0.1,
                    // ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        // navbar here
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
                    ),
                    Expanded(flex: 1, child: Container()),
                    // SizedBox(
                    //   height: this.height! * 0.05,
                    // ),
                    
                    Expanded(
                        flex: 18,
                        child: Column(
                          children: [
                            SizedBox(height: 5), // Adds vertical space
                            Expanded(
                                flex: 2,
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: content_widget())),
                            SizedBox(height: 10), // Adds vertical space
                            Expanded(
                                flex: 4,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Hello there!" +
                                        " I'm thrilled to welcome you to my portfolio. I am a passionate and versatile full-stack" +
                                        "developer with a keen interest in exploring the latest cutting-edge technologies." +
                                        "My journey in the world of web development has been nothing short of exhilarating, and" +
                                        " I constantly strive to enhance my skills and embrace emerging trends in the industry."))),
                            // SizedBox(height: 0), // Adds vertical space
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 1), // Adds padding
                                  child: Text(
                                    "What I do!",
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5), // Adds vertical space
                            Expanded(
                                flex:12,
                                child: GridContentWidget(
                                  items: items,
                                )),
                          ],
                        )),
                  ],
                ),
              )),
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Colors.black, // Set border color to black
          //           width: 1.0, // Set border width
          //         ),
          //       ),
          //     )),
        ],
      ),
    );
  }
}
