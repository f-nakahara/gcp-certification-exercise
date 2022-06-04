import 'package:equatable/equatable.dart';

/// コース
class Course extends Equatable {
  final String id;
  final String name;

  const Course({
    required this.id,
    required this.name,
  });

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'].toString(),
      name: map['name'],
    );
  }

  @override
  List<Object?> get props => [id];
}
