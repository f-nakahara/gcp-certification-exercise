import 'package:equatable/equatable.dart';

/// 問題
class Question extends Equatable {
  final String id;
  final String body;
  final String explanation;

  const Question({
    required this.id,
    required this.body,
    required this.explanation,
  });

  @override
  List<Object?> get props => [id];
}