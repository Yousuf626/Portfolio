import 'package:flutter/material.dart';

class gridvalues extends StatelessWidget {
  const gridvalues({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7, // Adjustable based on your need
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.5, // Adjust the aspect ratio as needed
                children: <Widget>[
                   _buildResumeCard(
                      'O Levels', '2016-2018', 'Happy Home School',context),
                  _buildResumeCard(
                      'Game Designer', '2024', 'MindStorm Studios',context),
                  _buildResumeCard('A Levels', '2018-2020',
                      'BeaconHouse PECHs',context),
                  _buildResumeCard(
                      'Social Internship', '2023', 'Special Olympics Pakistan',context),
                  _buildResumeCard(
                      'BSCS', '2020-2024', 'IBA',context),
                  _buildResumeCard(
                      '', '', '',context),
                ],
              ),
            ),
          );
  }
}
Widget _buildResumeCard(String title, String date, String institution, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  // Calculate padding and margin dynamically based on screen size
  double dynamicMargin = screenWidth * 0.015; // Reduced margin
  double dynamicPadding = screenHeight * 0.012; // Reduced padding

  return Card(
    margin: EdgeInsets.all(dynamicMargin),
    child: Padding(
      padding: EdgeInsets.all(dynamicPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: screenHeight * 0.025, // Adjusted for visibility
            ),
          ),
          SizedBox(height: screenHeight * 0.015), // Adjust space between text
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenHeight * 0.035, // Adjusted for visibility
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.01), // Adjust space between text
          Text(
            institution,
            style: TextStyle(
              color: Colors.black45,
              fontSize: screenHeight * 0.035, // Adjusted for visibility
            ),
          ),
        ],
      ),
    ),
  );
}
