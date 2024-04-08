import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {
  RowItemWidget({super.key, this.width, this.imageName,this.height});
  double? width;
  double? height;
  String? imageName;

  @override
  Widget build(BuildContext context) {
    print(this.height);
    return Container(
      width: this.width! / 10,
      height: this.height!/12,
      decoration: BoxDecoration(
        // color: Colors.white, // Change color to whatever you desire
        border: Border.all(
          color: Colors.black, // Set border color to black
          width: 1.0, // Set border width
        ),
        borderRadius:
            BorderRadius.circular(10), // Adjust radius for rounded corners
      ),
      padding: const EdgeInsets.all(13.5),
      // margin: const EdgeInsets.all(8.0),
      child: Image.asset(
        '$imageName.png', // Replace 'image_name.png' with the actual path to your image asset
        fit: BoxFit.fill, // Adjust the fit of the image inside the container
        // width: this.width! / ,
      ),
    );
  }
}
