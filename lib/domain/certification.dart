import 'package:equatable/equatable.dart';

/// 資格
class Certification extends Equatable {
  final String id;
  final String name;
  final String courseName;

  const Certification({
    required this.name,
    required this.id,
    required this.courseName,
  });

  factory Certification.fromMap(Map<String, dynamic> map) {
    return Certification(
      name: map['name'],
      id: map['id'].toString(),
      courseName: map['courseName'],
    );
  }

  @override
  List<Object?> get props => [id];
}
