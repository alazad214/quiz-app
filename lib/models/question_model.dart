import 'dart:html';

class Question {
  final String questiontext;
  final List answerlist;

  Question(this.questiontext, this.answerlist);
}

class Answer {
  final String answertext;
  final bool iscurrect;
  Answer(this.answertext, this.iscurrect);
}

List<Question> getQuestion() {
  List<Question> list = [];

  list.add(Question(
      "Who developed the Flutter Framework and continues to maintain it today?",
      [
        Answer("Facebook", false),
        Answer("Microsoft", false),
        Answer("Google", true),
        Answer("Oracle", false),
      ]));
  list.add(Question(
      "Which programming language is used to build Flutter applications?", [
    Answer("Java", false),
    Answer("Dart", true),
    Answer("JavaScript", false),
    Answer("Python", false),
  ]));
  list.add(Question("How many types of widgets are there in Flutter?", [
    Answer("2", true),
    Answer("5", false),
    Answer("3", false),
    Answer("4", false),
  ]));
  list.add(
      Question("A sequence of asynchronous Flutter events is known as a:", [
    Answer("Flow", false),
    Answer("Current", false),
    Answer("Stream", true),
    Answer("Series", false),
  ]));

  return list;
}
