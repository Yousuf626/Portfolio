import 'package:flutter/material.dart';

class work_gridvalues extends StatelessWidget {
  const work_gridvalues({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7, // Adjustable based on your need
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.3, // Adjust the aspect ratio as needed
                children: <Widget>[
                   _buildResumeCard(
                      'MedQR','profile.jpg',context),
                  _buildResumeCard(
                      'Technical Mentor','pixel.jpg',context),
                ],
              ),
            ),
          );
  }
}

Widget _buildResumeCard(String title, String imageName, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  // Calculate padding and margin dynamically based on screen size
  double dynamicMargin = screenWidth * 0.015; // Reduced margin
  double dynamicPadding = screenHeight * 0.012; // Reduced padding

  // Constructing the image path dynamically
  // String imagePath = 'assets/$imageName'; // Assuming images are stored in assets folder

  return Card(
    margin: EdgeInsets.all(dynamicMargin),
    child: Padding(
      padding: EdgeInsets.all(dynamicPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Image widget
          Container(
            decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Set border color to black
          width: 1.0, // Set border width
        ),
      ),
            child: Image.asset(
              '{imageName}',
              // width: screenWidth * 0.4, // Adjust image size as needed
              width: double.infinity, // Adjust image size as needed
              height: screenHeight * 0.23,
              fit: BoxFit.fill, // Adjust the fit as needed
            ),
          ),
          SizedBox(height: screenHeight * 0.035), // Adjust space between image and text
          // Project title
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenHeight * 0.035, // Adjusted for visibility
              fontWeight: FontWeight.bold,
            ),
          ),
          
        ],
      ),
    ),
  );
}
