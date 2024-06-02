import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Colors.dart';
import 'package:flutter_application_1/widgets/about_page/main_widget/content_box.dart';
import 'package:flutter_application_1/widgets/about_page/main_widget/grid_with_rows.dart';

class finalBox extends StatelessWidget {
  final List<ContentItem> items;
  const finalBox({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.displayWidgetColor,
      child: Column(
        children: [
          SizedBox(height: 5), // Adds vertical space
          Expanded(
              flex: 2,
              child:
                  Align(alignment: Alignment.topLeft, child: content_widget())),
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
                padding: EdgeInsets.symmetric(vertical: 1), // Adds padding
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
              flex: 12,
              child: GridContentWidget(
                items: items,
              )),
        ],
      ),
    );
  }
}
