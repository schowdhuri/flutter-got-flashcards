import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flashcards/screens/cards/widgets/flashcard_content.dart';
import 'package:flashcards/screens/cards/widgets/option_selector.dart';
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
    final ValueNotifier<bool> isAnswered = useState(false);
    final ValueNotifier<Option> selectedOption = useState(null);
    final ValueNotifier<GlobalKey<FlipCardState>> flipCardKey =
        useState(GlobalKey<FlipCardState>());
    handleSelectOption(Option option) {
      if (isAnswered.value) {
        return;
      }
      isAnswered.value = true;
      selectedOption.value = option;
      flipCardKey.value.currentState.toggleCard();
    }

    DeviceInfo deviceInfo = Provider.of<DeviceInfo>(context);
    return Column(
      children: [
        Container(
          height: (deviceInfo.size.height - 150) * 0.8,
          width: deviceInfo.size.width * 0.8,
          margin: EdgeInsetsDirectional.only(
            top: (deviceInfo.size.height - 150) * 0.1,
          ),
          child: FlipCard(
            key: flipCardKey.value,
            flipOnTouch: false,
            front: FlashCardContent(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Image.network(
                        question.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            back: FlashCardContent(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectedOption.value != null &&
                            selectedOption.value.isCorrect
                        ? Icon(
                            Icons.check,
                            size: 64,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.close,
                            size: 64,
                            color: Colors.red,
                          ),
                    SizedBox(height: 32),
                    Text(
                      question.options
                          .where((Option opt) => opt.isCorrect)
                          .toList()[0]
                          .text,
                      style: TextStyle(
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
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
