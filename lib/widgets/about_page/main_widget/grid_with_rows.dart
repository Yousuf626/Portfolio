import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Colors.dart';

class ContentItem {
  final String heading;
  final String content;
  final IconData icon;

  ContentItem({required this.heading, required this.content, required this.icon});
}

class GridContentWidget extends StatelessWidget {
  final List<ContentItem> items;

  const GridContentWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(child: buildCard(context, 0)),
              Expanded(child: buildCard(context, 1)),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(child: buildCard(context, 2)),
              Expanded(child: buildCard(context, 3)),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCard(BuildContext context, int index) {
    ContentItem item = items[index];
    return GestureDetector(
      onTap: () => showDetailDialog(context, index),
      child: Container(
        child: Card(
          color: index % 2 == 0 ? ColorManager.grid_color1 : ColorManager.grid_color2,
          elevation: 4.0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(item.icon, size: 40),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        item.heading,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Expanded(
                  child: Text(
                    item.content,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showDetailDialog(BuildContext context, int currentIndex) {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            ContentItem item = items[currentIndex];
            return Dialog(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.heading,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ),
                    Icon(item.icon, size: 60),
                    SizedBox(height: 10),
                    Text(
                      item.content,
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: currentIndex > 0 ? () {
                            Navigator.pop(context);  // Close the current dialog
                            showDetailDialog(context, currentIndex - 1);  // Open the previous item
                          } : null,
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: currentIndex < items.length - 1 ? () {
                            Navigator.pop(context);  // Close the current dialog
                            showDetailDialog(context, currentIndex + 1);  // Open the next item
                          } : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
