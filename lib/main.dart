import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/colors.dart';
import 'package:whatsapp_clone/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: GlobalColors.mainColor),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: GlobalColors.mainColor,
            foregroundColor: GlobalColors.whiteColor,
          )),
      home: HomePage(),
    );
  }
}
