import 'package:flashcards/helpers/deviceinfo_provider.dart';
import 'package:flashcards/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlashCardsApp());
}

class FlashCardsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash Cards',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DeviceInfoProvider(
        child: HomeScreen(),
      ),
    );
  }
}
