import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {
  RowItemWidget({super.key, this.width, this.imageName,this.height,required this.borderRadius,required this.paddingVal,required this.widthDivideVal,required this.heightDivideVal});
  double? width;
  double? height;
  String? imageName;
  int widthDivideVal;
  int heightDivideVal;
  double borderRadius;
  double paddingVal;

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: this.width! / widthDivideVal,
      height: this.height!/heightDivideVal,
      decoration: BoxDecoration(
        // color: Colors.white, // Change color to whatever you desire
        border: Border.all(
          color: Colors.black, // Set border color to black
          width: 1.0, // Set border width
        ),
        borderRadius:
            BorderRadius.circular(this.borderRadius), // Adjust radius for rounded corners
      ),
      padding:  EdgeInsets.all(this.paddingVal),
      // margin: const EdgeInsets.all(8.0),
      child: Image.asset(
        '$imageName.png', // Replace 'image_name.png' with the actual path to your image asset
        fit: BoxFit.fill, // Adjust the fit of the image inside the container
        
      ),
    );
  }
}
