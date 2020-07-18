import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flashcards/models/question.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OptionSelector extends HookWidget {
  final Question question;
  final Function onChange;
  final Random _random = new Random();

  OptionSelector({
    Key key,
    @required this.question,
    @required this.onChange,
  }) : super(key: key);

  final TextStyle _textStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> areOptionsFlipped = useState(_random.nextBool());
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          OptionButton(
            onChange: onChange,
            option: question.options[areOptionsFlipped.value ? 1 : 0],
            textStyle: _textStyle,
          ),
          SizedBox(width: 1),
          OptionButton(
            onChange: onChange,
            option: question.options[areOptionsFlipped.value ? 0 : 1],
            textStyle: _textStyle,
          ),
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key key,
    @required this.onChange,
    @required this.option,
    @required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final Function onChange;
  final Option option;
  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: Colors.black45,
        onPressed: () {
          onChange(option);
        },
        child: Container(
          alignment: Alignment.center,
          height: 80,
          child: Text(
            option.text,
            style: _textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
