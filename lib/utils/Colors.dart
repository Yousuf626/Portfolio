import 'dart:ui';
class ColorManager {
  static Color displayWidgetColor = _hexToColor('#fefefe'); // Define your colors here
  static Color secondaryColor = _hexToColor('#4CAF50');
  static Color accentColor = _hexToColor('#E91E63');
  static Color backgroundColor = _hexToColor('#F2F5F9');
  static Color backgroundColor1 = _hexToColor('#e8edf4');
  static Color textPrimaryColor = _hexToColor('#b8cbcc');
  static Color underline = _hexToColor('#9eb8b9');
  static Color btn_grad_1 = _hexToColor('#ff9c1a');
  static Color btn_grad_2 = _hexToColor('#ec1b09');

  static Color _hexToColor(String hexColor) {
    String hex = hexColor.replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex';
    }
    return Color(int.parse(hex, radix: 16));
  }
}
