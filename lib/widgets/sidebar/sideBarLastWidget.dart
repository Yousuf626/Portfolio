import 'package:flutter/cupertino.dart';

import 'sidebarRowItem.dart';

class listItem extends StatelessWidget {
  listItem(
      {super.key,
      this.width,
      this.imageName,
      this.height,
      this.heading,
      this.subHeading});
  double? width;
  double? height;
  String? imageName;
  String? heading;
  String? subHeading;

  @override
  Widget build(BuildContext context) {
    print(this.width);
    return Row(
      children: [
        SizedBox(
          width: this.width! / 3.9,
        ),
        Container(
          child: RowItemWidget(
            width: this.width, // Adjust width of the RowItemWidget as needed
            height: this.height,
            imageName:
                '${imageName}', // Replace 'image_name' with the actual name of your image asset
            borderRadius: 35,
            widthDivideVal: 16,
            heightDivideVal: 20,
            paddingVal: 8,
          ),
        ),
        SizedBox(
          width: this.width! / 42,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$heading"),
              Text("$subHeading"),
            ],
          ),
        ),
      ],
    );
  }
}
