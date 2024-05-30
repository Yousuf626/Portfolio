import 'package:flutter/material.dart';

class NavigationBar_widget extends StatelessWidget {
  final List<NavItem> navItems = [
    NavItem(icon: Icons.home, title: 'Home'),
    NavItem(icon: Icons.search, title: 'Search'),
    NavItem(icon: Icons.notifications, title: 'Notifications'),
    NavItem(icon: Icons.account_circle, title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: navItems.map((navItem) {
        return GestureDetector(
          onTap: () {
            // Handle navigation here
            print('Tapped on ${navItem.title}');
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Set border color to black
                width: 1.0, // Set border width
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(navItem.icon, size: 15,),
                SizedBox(height: 3.0),
                Text(navItem.title),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class NavItem {
  final IconData icon;
  final String title;

  NavItem({required this.icon, required this.title});
}
