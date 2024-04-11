import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // Wrap the ListView in Expanded for scrolling
          child: ListView.builder(
            itemCount: 30, // Set item count to 30
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                    width: MediaQuery.of(context).size.width *
                        1 /
                        3, // Set width to 1/3 screen size
                    height: 50, // Set row height (optional)
                  ),
                  Container(
                    color: Colors.yellow,
                    width: MediaQuery.of(context).size.width * 1 / 3,
                    height: 50, // Set row height (optional)
                  ),
                  Container(
                    color: Colors.green,
                    width: MediaQuery.of(context).size.width * 1 / 3,
                    height: 50, // Set row height (optional)
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
