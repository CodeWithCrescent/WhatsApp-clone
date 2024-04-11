import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/colors.dart';
import 'package:whatsapp_clone/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: myAppBar(),
      ),
      bottomNavigationBar: BottomBarFloating(
        indexSelected: 0,
        animated: true,
        items: [
          TabItem(
            icon: Icons.chat,
            title: "Chats",
            count: Badge(
              label: Text("20"),
              backgroundColor: GlobalColors.greenColor,
              textColor: GlobalColors.whiteColor,
            ),
          ),
          TabItem(
            icon: Icons.update,
            title: "Updates",
            count: Badge(
              label: Text("31"),
              backgroundColor: GlobalColors.greenColor,
              textColor: GlobalColors.whiteColor,
            ),
          ),
          const TabItem(
            icon: Icons.people_outline,
            title: "Communities",
          ),
          TabItem(
            icon: Icons.call_outlined,
            title: "Calls",
            count: Badge(
              label: Text("4"),
              backgroundColor: GlobalColors.greenColor,
              textColor: GlobalColors.whiteColor,
            ),
          ),
        ],
        backgroundColor: GlobalColors.whiteColor,
        color: GlobalColors.blackColor,
        colorSelected: GlobalColors.blackColor,
      ),
    );
  }
}
