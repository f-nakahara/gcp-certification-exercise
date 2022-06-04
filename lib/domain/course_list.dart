import 'package:equatable/equatable.dart';
import 'package:gcp_certification_exercise/domain/course.dart';

/// コース一覧
class CourseList extends Equatable {
  final List<Course> courses;

  const CourseList({
    required this.courses,
  });

  factory CourseList.fromMap(Map<String, dynamic> map) {
    return CourseList(
      courses: (map['data'] as List).map((e) => Course.fromMap(e)).toList(),
    );
  }

  @override
  List<Object?> get props => [courses];
}
