import 'package:flashcards/screens/home/widgets/flashcard_content.dart';
import 'package:flashcards/screens/home/widgets/option_selector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flashcards/models/question.dart';
import 'package:flashcards/models/deviceinfo.dart';

class FlashCard extends HookWidget {
  final Question question;

  FlashCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedOption = useState(-1);
    handleSelectOption(int index) {
      selectedOption.value = index;
    }

    DeviceInfo deviceInfo = Provider.of<DeviceInfo>(context);
    return Column(
      children: [
        Container(
          height: (deviceInfo.size.height - 80) * 0.8,
          width: deviceInfo.size.width * 0.8,
          margin: EdgeInsetsDirectional.only(
            top: (deviceInfo.size.height - 80) * 0.1,
          ),
          child: FlipCard(
            front: FlashCardContent(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  question.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            back: FlashCardContent(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    question.options
                        .where((Option opt) => opt.isCorrect)
                        .toList()[0]
                        .text,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 80,
                child: OptionSelector(
                  question: question,
                  onChange: handleSelectOption,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
