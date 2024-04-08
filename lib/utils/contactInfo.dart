class MyData {
  final String heading;
  final String subheading;
  final String photoLocation;

  MyData({
    required this.heading,
    required this.subheading,
    required this.photoLocation,
  });
}

class DataContainer {
  List<MyData> dataList = [
    MyData(
      heading: 'Heading 1',
      subheading: 'Subheading 1',
      photoLocation: 'assets/photo1.png',
    ),
    MyData(
      heading: 'Heading 2',
      subheading: 'Subheading 2',
      photoLocation: 'assets/photo2.png',
    ),
    MyData(
      heading: 'Heading 3',
      subheading: 'Subheading 3',
      photoLocation: 'assets/photo3.png',
    ),
  ];
}
