import 'package:equatable/equatable.dart';

/// 問題
class Question extends Equatable {
  final String id;
  final String body;
  final String choices;
  final String answer;

  const Question({
    required this.id,
    required this.body,
    required this.choices,
    required this.answer,
  });

  @override
  List<Object?> get props => [id];
}
