import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/navigation_bloc.dart';
import '../../../utils/Colors.dart';
class NavigationBar_widget extends StatelessWidget {
  final double width;

  NavigationBar_widget({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    List<NavItem> navItems = [
      NavItem(icon: Icons.home, title: 'Home', navBarItem: NavBarItem.Home),
      NavItem(icon: Icons.assignment_outlined, title: 'CV', navBarItem: NavBarItem.CV),
      NavItem(icon: Icons.cases_outlined, title: 'Work', navBarItem: NavBarItem.Work),
      NavItem(icon: Icons.contacts_rounded, title: 'Contact', navBarItem: NavBarItem.Contact),
    ];

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: navItems.map((navItem) {
              bool isSelected = state.selectedNavItem == navItem.navBarItem;
              return ElevatedButton(
                onPressed: () {
                  print('Navigated to ${navItem.title}');
                  BlocProvider.of<NavigationBloc>(context).add(NavigateTo(navItem.navBarItem));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: isSelected
                      ? LinearGradient(colors: [ColorManager.btn_grad_1, ColorManager.btn_grad_1, ColorManager.btn_grad_2])
                      : LinearGradient(colors: [Colors.white]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: this.width * 0.07,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(navItem.icon, size: 14),
                        Text(navItem.title),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

class NavItem {
  final IconData icon;
  final String title;
  final NavBarItem navBarItem;

  NavItem({required this.icon, required this.title, required this.navBarItem});
}
