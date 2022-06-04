import 'package:equatable/equatable.dart';
import 'package:gcp_certification_exercise/domain/certification.dart';

/// 資格一覧
class CertificationList extends Equatable {
  final List<Certification> certifications;

  const CertificationList({
    required this.certifications,
  });

  factory CertificationList.fromMap(Map<String, dynamic> map) {
    return CertificationList(
      certifications:
          (map['data'] as List).map((e) => Certification.fromMap(e)).toList(),
    );
  }

  @override
  List<Object?> get props => [certifications];
}
