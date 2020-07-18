import 'dart:math';

import 'package:flashcards/models/question.dart';
import 'package:flashcards/models/got-questions.dart';

class Questions {
  static final Random _random = new Random();
  static final List<Question> list = List<Question>.generate(
    GoTCharacter.list.length,
    (index) {
      GoTCharacter gotChar = GoTCharacter.list[index];
      return Question(
        image: "${GoTCharacter.basePath}/${gotChar.image}",
        options: <Option>[
          Option(
            text: gotChar.name,
            isCorrect: true,
          ),
          Option(
            text: GoTCharacter
                .list[_random.nextInt(GoTCharacter.list.length - 1)].name,
            isCorrect: false,
          )
        ],
      );
    },
  );
}
