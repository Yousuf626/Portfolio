import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class content_widget extends StatelessWidget {
  const content_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Set border color to black
          width: 1.0, // Set border width
        ),
      ),
      child: Row(
    // return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            child: Text(
              "about me",
              style: TextStyle(
                fontSize: 28, // Adjust the font size here
              ),
            ),
          ),
        ),
        Expanded(flex: 1, child: Container()),
        // Expanded(
        //   flex: 7,
        //   child: Align(
        //     alignment: Alignment.center,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         border: Border.all(
        //             color: Colors.blue, // Set border color to blue
        //             width: 1.0, // Set border width
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Expanded(
          flex: 7,
          child: Align(
            alignment: Alignment.center,
            child: Divider(
              color: Colors.blue, // Set the color to blue
              thickness: 1.0, // Set the thickness to 1
            ),
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    ),
    );
  }
}
