import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class work_gridvalues extends StatelessWidget {
  const work_gridvalues({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.3,
          children: <Widget>[
            _buildResumeCard('MedQR', 'medqr.jpg', context, 'assets/medqrvid.mp4'),
            _buildResumeCard('Jumping Jam', 'jumper-jam.jpg', context, 'assets/jj.mp4'),
          ],
        ),
      ),
    );
  }
}

Widget _buildResumeCard(String title, String imageName, BuildContext context, String videoPath) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  double dynamicMargin = screenWidth * 0.015;
  double dynamicPadding = screenHeight * 0.012;

  String imagePath = 'assets/$imageName';

  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return VideoDialog(videoPath: videoPath);
        },
      );
    },
    child: Card(
      margin: EdgeInsets.all(dynamicMargin),
      child: Padding(
        padding: EdgeInsets.all(dynamicPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: screenHeight * 0.23,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: screenHeight * 0.035),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenHeight * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class VideoDialog extends StatefulWidget {
  final String videoPath;

  const VideoDialog({required this.videoPath});

  @override
  _VideoDialogState createState() => _VideoDialogState();
}

class _VideoDialogState extends State<VideoDialog> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Dialog(
        child: Container(
          width: 100.0,
          height: 100.0,
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    final double videoWidth = _controller.value.size.width;
    final double videoHeight = _controller.value.size.height;

    return Dialog(
      child: Container(
        width: videoWidth,
        height: videoHeight,
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
