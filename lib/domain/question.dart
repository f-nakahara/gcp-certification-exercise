import 'package:equatable/equatable.dart';

/// 問題
class Question extends Equatable {
  final String id;
  final String body;
  final String choices;
  final String answer;
  final String certificationName;

  const Question({
    required this.id,
    required this.body,
    required this.choices,
    required this.answer,
    required this.certificationName,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'].toString(),
      body: map['body'],
      choices: map['choices'],
      answer: map['answer_explanation'],
      certificationName: map['certification_name'],
    );
  }

  @override
  List<Object?> get props => [id];
}
