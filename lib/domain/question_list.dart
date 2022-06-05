import 'package:equatable/equatable.dart';
import 'package:gcp_certification_exercise/domain/question.dart';

/// 問題一覧
class QuestionList extends Equatable {
  final List<Question> questions;

  const QuestionList({
    required this.questions,
  });

  factory QuestionList.fromMap(Map<String, dynamic> map) {
    return QuestionList(
      questions: (map['data'] as List).map((e) => Question.fromMap(e)).toList(),
    );
  }

  @override
  List<Object?> get props => [questions];
}
