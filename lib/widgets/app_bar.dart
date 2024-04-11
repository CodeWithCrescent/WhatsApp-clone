import 'package:flutter/material.dart';

Widget buildAppBar(String title, List<Widget> actions) {
  return AppBar(
    title: Text(title),
    actions: actions,
  );
}
