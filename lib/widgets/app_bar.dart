import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/colors.dart';

Widget buildAppBar() {
  return AppBar(
    title: const Text("WhatsApp"),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.camera_alt_outlined),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search_outlined),
      ),
      PopupMenuButton(
        position: PopupMenuPosition.under,
        offset: const Offset(0, 5),
        surfaceTintColor: GlobalColors.bgColor,
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text('New group'),
          ),
          const PopupMenuItem(
            child: Text('New broadcast'),
          ),
          const PopupMenuItem(
            child: Text('Linked devices'),
          ),
          const PopupMenuItem(
            child: Text('Starred messages'),
          ),
          const PopupMenuItem(
            child: Text('Settings'),
          ),
        ],
      ),
    ],
  );
}
