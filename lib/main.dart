import 'package:flashcards/helpers/deviceinfo_provider.dart';
import 'package:flashcards/screens/cards/cards_screen.dart';
import 'package:flashcards/screens/start/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlashCardsApp());
}

class FlashCardsApp extends StatelessWidget {
  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    if (settings.name == "/cards") {
      return MaterialPageRoute(builder: (BuildContext context) {
        return DeviceInfoProvider(
          child: CardsScreen(),
        );
      });
    }

    return MaterialPageRoute(builder: (BuildContext context) {
      return DeviceInfoProvider(
        child: StartScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash Cards',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: _onGenerateRoute,
      initialRoute: "/",
    );
  }
}
