import 'package:equatable/equatable.dart';
import 'package:gcp_certification_exercise/domain/course.dart';

/// コース一覧
class CourseList extends Equatable {
  final List<Course> courses;

  const CourseList({
    required this.courses,
  });

  @override
  List<Object?> get props => [courses];
}
