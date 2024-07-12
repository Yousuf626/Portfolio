
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/work_page/grid_val.dart';

import '../../utils/Colors.dart';
import 'heading.dart';

class WorkWidget extends StatelessWidget {
  final double width;
  const WorkWidget({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
         color: ColorManager.displayWidgetColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          work_heading_widget(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          Flexible(
            flex: 5, // Adjust flex ratios as needed
            child: work_gridvalues(),
          ),
        
        ],
      ),
    );
  }
}
