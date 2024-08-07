import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/bloc/navigation_bloc.dart';
import 'package:flutter_application_1/utils/Colors.dart';
import 'package:flutter_application_1/widgets/CV/resumeBox.dart';
import 'package:flutter_application_1/widgets/about_page/main_widget/completebox.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../work_page/mainWidget.dart';
import 'content_box.dart';
import 'grid_with_rows.dart';
import 'navbar.dart';




class MainBox_Widget extends StatelessWidget {
  final double? width;
  final double? height;

  MainBox_Widget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    // Assuming you have a list of content items defined elsewhere
    List<ContentItem> items = [
      ContentItem(
        heading: 'Web Development',
        content: "As a developer, I find myself most captivated by the power and flexibility of NEXT.js. I'm always eager to dive into new projects that leverage NEXT.js and discover innovative ways to create fast, scalable, and user-friendly applications.",
        icon: Icons.code_outlined,
      ),
      ContentItem(
        heading: 'App Development',
        content: "With a focus on user-centric design and cutting-edge technologies, I thrive on building intuitive and efficient apps that make a positive impact on people's lives. Let's turn ideas into reality and shape the future together.",
        icon: Icons.camera_alt_outlined,
      ),
      ContentItem(
        heading: 'UI/UX Designing',
        content: "Crafting visually appealing and intuitive user interfaces that offer a delightful user experience is something I'm truly fanatic about.",
        icon: Icons.design_services,
      ),
      ContentItem(
        heading: 'Mentorship',
        content: "I have also found great joy in sharing my knowledge with others. Being a technical mentor allows me to give back to the community that has supported me throughout my career.",
        icon: Icons.workspace_premium_outlined,
      ),
    ];

    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          Widget content;
          switch (state.selectedNavItem) {
            case NavBarItem.Home:
              content = finalBox(items: items);
              break;
               case NavBarItem.CV:
              content = ResumeBox(width:  this.width!);
              break;
              case NavBarItem.Work:
              content = WorkWidget(width: this.width!);
            default:
              content = Text("No content selected");
          }

          return Container(
            width: width,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(flex: 4, child: Container()),
                              Expanded(
                                flex: 7,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorManager.navbarColors1,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: NavigationBar_widget(width: this.width!),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                        Expanded(flex: 18, child: SingleChildScrollView(child: ConstrainedBox(
                              constraints: BoxConstraints(
                                // Setting minimum height to take at least the full viewport height
                                minHeight: MediaQuery.of(context).size.height,
                              ),
                              child: IntrinsicHeight(
                                child: content,
                              ),
                            ),)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}