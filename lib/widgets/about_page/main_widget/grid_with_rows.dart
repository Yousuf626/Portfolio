import 'package:flutter/material.dart';


class ContentItem {
  final String imagePath;
  final String heading;
  final String content;

  ContentItem({required this.imagePath, required this.heading, required this.content});
}

class GridContentWidget extends StatelessWidget {
  final List<ContentItem> items;

  const GridContentWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return 
      
      Column(
        children: [
          // First row of items
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: buildCard(items[0])),
                 // Horizontal spacing between cards
                Expanded(child: buildCard(items[1])),
              ],
            ),
          ),
          // SizedBox(height: 16.0), // Vertical spacing between rows
          // Second row of items
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: buildCard(items[2])),
                 // Horizontal spacing between cards
                Expanded(child: buildCard(items[3])),
              ],
            ),
          ),
        ],
      );
    
  }

  Widget buildCard(ContentItem item) {
    return Container(
      // height: 200, // Set height as per your requirement
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Image.asset(
                  //   item.imagePath,
                  //   width: 40,
                  //   height: 40,
                  // ),
                  Icon(Icons.image, size: 40),
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
    );
  }
}
