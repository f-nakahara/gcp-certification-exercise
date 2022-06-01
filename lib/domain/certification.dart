import 'package:equatable/equatable.dart';

/// 資格
class Certification extends Equatable {
  final String id;
  final String name;

  const Certification({
    required this.name,
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
