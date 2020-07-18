import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flashcards/screens/home/widgets/flashcard.dart';
import 'package:flashcards/models/questions.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Swiper(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FlashCard(
              question: Questions.list[index],
            );
          },
        ),
      ),
    );
  }
}
