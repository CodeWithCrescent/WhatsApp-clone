import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/colors.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/communities_screen.dart';
import 'package:whatsapp_clone/screens/select_contact.dart';
import 'package:whatsapp_clone/screens/updates_screen.dart';
import 'package:whatsapp_clone/widgets/app_bar.dart';
import 'package:whatsapp_clone/widgets/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    Chats(),
    Updates(),
    Communities(),
    Calls(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation logic here (optional)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: buildAppBar(
          "WhatsApp",
          [
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SelectContact(),
            ),
          );
        },
        backgroundColor: GlobalColors.mainColor,
        foregroundColor: GlobalColors.whiteColor,
        child: const Icon(Icons.add_comment),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: MyBottomBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
