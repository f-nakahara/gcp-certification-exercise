import 'package:equatable/equatable.dart';
import 'package:gcp_certification_exercise/domain/question.dart';

/// 問題一覧
class QuestionList extends Equatable {
  final List<Question> questions;

  const QuestionList({
    required this.questions,
  });

  @override
  List<Object?> get props => [questions];
}
