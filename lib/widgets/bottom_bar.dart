import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/colors.dart';

class MyBottomBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;
  MyBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  List<TabItem> items = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return BottomBarFloating(
      paddingVertical: 20,
      animated: true,
      items: items,
      backgroundColor: GlobalColors.whiteColor,
      color: GlobalColors.mutedColor,
      colorSelected: GlobalColors.blackColor,
      indexSelected: widget.selectedIndex,
      onTap: widget.onItemSelected,
    );
  }
}
