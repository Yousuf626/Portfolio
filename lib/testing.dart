import 'package:flutter/material.dart';

class ResumeBoxTest extends StatelessWidget {
  const ResumeBoxTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'My Professional Timeline',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Here are some key milestones in my career:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8, // Adjustable based on your need
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 3, // Adjust the aspect ratio as needed
                    children: <Widget>[
                      _buildResumeCard('Software Development', '2020-2021', 'Moringa School'),
                      _buildResumeCard('Technical Mentor', '2022 - Present', 'Moringa School'),
                      _buildResumeCard('Disaster Management', '2012-2016', 'Masinde Muliro University'),
                      _buildResumeCard('Website Development', '2021-2022', 'Village 2 Nation'),
                       _buildResumeCard('Software Development', '2020-2021', 'Moringa School'),
                      _buildResumeCard('Technical Mentor', '2022 - Present', 'Moringa School'),
                      _buildResumeCard('Disaster Management', '2012-2016', 'Masinde Muliro University'),
                      _buildResumeCard('Website Development', '2021-2022', 'Village 2 Nation'),
                       _buildResumeCard('Software Development', '2020-2021', 'Moringa School'),
                      _buildResumeCard('Technical Mentor', '2022 - Present', 'Moringa School'),
                      _buildResumeCard('Disaster Management', '2012-2016', 'Masinde Muliro University'),
                      _buildResumeCard('Website Development', '2021-2022', 'Village 2 Nation'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResumeCard(String title, String date, String institution) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              date,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              institution,
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}
