import 'package:dio/dio.dart';
import 'package:gcp_certification_exercise/domain/certification_list.dart';
import 'package:gcp_certification_exercise/domain/course_list.dart';
import 'package:gcp_certification_exercise/domain/question_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final gcpCertificationExerciseAPI = Provider<GCPCertificationExerciseAPI>(
  (ref) => GCPCertificationExerciseAPI(),
);

class GCPCertificationExerciseAPI {
  static const api =
      'https://script.google.com/macros/s/AKfycbyF2hWobhez960GDxP2xQf9HBdX8lY8pItfqr1pmpohW3LclsJ9CwEPkAElmc1QocDg/exec';
  final dio = Dio(BaseOptions(
    responseType: ResponseType.json,
    baseUrl: api,
  ));

  /// コース一覧の取得
  Future<CourseList> courses() async {
    final response = await dio.get('$api?path=courses');
    final data = CourseList.fromMap(response.data);
    return data;
  }

  /// 資格一覧の取得
  Future<CertificationList> certifications() async {
    final response = await dio.get('$api?path=certifications');
    final data = CertificationList.fromMap(response.data);
    return data;
  }

  /// 問題一覧の取得
  Future<QuestionList> questions() async {
    final response = await dio.get('$api?path=questions');
    final data = QuestionList.fromMap(response.data);
    return data;
  }
}
