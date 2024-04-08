import 'package:flutter/material.dart';

class emptyBox extends StatelessWidget {
  final double width;
  Widget? child;
  emptyBox({super.key, required this.width,this.child});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            width: this.width,
            height: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Set border color to black
                  width: 1.0, // Set border width
                ),
              ),
              // Add child widgets here if needed
            ),
          );
  }
}