import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/colors.dart';
import 'package:whatsapp_clone/widgets/app_bar.dart';

class SelectContact extends StatelessWidget {
  const SelectContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: buildAppBar(
          "Select contact",
          [
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
                  child: Text('Invite a friend'),
                ),
                const PopupMenuItem(
                  child: Text('Contacts'),
                ),
                const PopupMenuItem(
                  child: Text('Refresh'),
                ),
                const PopupMenuItem(
                  child: Text('Help'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('List of contacts'),
      ),
    );
  }
}
