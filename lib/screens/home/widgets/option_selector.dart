import 'package:flashcards/models/question.dart';
import 'package:flutter/material.dart';

class OptionSelector extends StatelessWidget {
  final Question question;
  final Function onChange;

  const OptionSelector({
    Key key,
    @required this.question,
    @required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                onChange(0);
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  question.options[0].text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 1,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                onChange(1);
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  question.options[1].text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
