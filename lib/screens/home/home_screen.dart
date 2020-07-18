import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flashcards/screens/home/widgets/flashcard.dart';
import 'package:flashcards/models/questions.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flashcards/models/question.dart';

class HomeScreen extends HookWidget {
  static const MaxQuestions = 20;
  const HomeScreen({Key key}) : super(key: key);

  List<Question> getRandomQuestions() {
    Random random = new Random();
    List<int> indices = [];
    int index;
    for (int i = 1; i <= MaxQuestions; i++) {
      while (true) {
        index = random.nextInt(Questions.list.length - 1);
        if (indices.indexOf(index) == -1) {
          indices.add(index);
          break;
        }
      }
    }
    return List<Question>.generate(
      MaxQuestions,
      (index) => Questions.list[indices[index]],
    );
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Question>> questions = useState(getRandomQuestions());
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Swiper(
          itemCount: MaxQuestions,
          loop: false,
          itemBuilder: (BuildContext context, int index) {
            return FlashCard(
              question: questions.value[index],
            );
          },
        ),
      ),
    );
  }
}
