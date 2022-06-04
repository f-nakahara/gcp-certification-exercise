import 'package:dio/dio.dart';
import 'package:gcp_certification_exercise/domain/course_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final gcpCertificationExerciseAPI = Provider<GCPCertificationExerciseAPI>(
  (ref) => GCPCertificationExerciseAPI(),
);

class GCPCertificationExerciseAPI {
  static const api =
      'https://script.google.com/macros/s/AKfycbwRRDcaDNlcgedXXbP625LJBdmsfviWSKIFQME7bnonsZ5C5Ub823IWyKsvNmSdCcOs/exec';
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
}
