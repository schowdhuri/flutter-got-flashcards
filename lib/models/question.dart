class Question {
  final String text;
  final String image;
  final List<Option> options;

  Question({this.text, this.image, this.options});
}

class Option {
  final String text;
  final bool isCorrect;

  Option({this.text, this.isCorrect});
}
