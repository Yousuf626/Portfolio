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
                      'Software Development', '2020-2021', 'Moringa School',context),
                  _buildResumeCard(
                      'Technical Mentor', '2022 - Present', 'Moringa School',context),
                  _buildResumeCard('Disaster Management', '2012-2016',
                      'Masinde Muliro University',context),
                  _buildResumeCard(
                      'Website Development', '2021-2022', 'Village 2 Nation',context),
                  _buildResumeCard(
                      'Software Development', '2020-2021', 'Moringa School',context),
                  _buildResumeCard(
                      'Technical Mentor', '2022 - Present', 'Moringa School',context),
                  _buildResumeCard('Disaster Management', '2012-2016',
                      'Masinde Muliro University',context),
                  _buildResumeCard(
                      'Website Development', '2021-2022', 'Village 2 Nation',context),
                  _buildResumeCard(
                      'Software Development', '2020-2021', 'Moringa School',context),
                  _buildResumeCard(
                      'Technical Mentor', '2022 - Present', 'Moringa School',context),
                  _buildResumeCard('Disaster Management', '2012-2016',
                      'Masinde Muliro University',context),
                  _buildResumeCard(
                      'Website Development', '2021-2022', 'Village 2 Nation',context),
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
