import 'package:flutter/material.dart';

import 'sidebarRowItem.dart';

class linksWidget extends StatelessWidget {
   linksWidget({super.key,this.height,this.width});
   double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
        width: this.width! * 0.25,
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return RowItemWidget(
              width: this.width, // Adjust width of the RowItemWidget as needed
              height: this.height,
              imageName:
                  '${index + 1}', // Replace 'image_name' with the actual name of your image asset
            );
          }),
        ),
      ),
      SizedBox(width: this.width! * 0.25),
    ]);
  }
}
