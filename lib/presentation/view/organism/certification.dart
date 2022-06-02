import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/card_button.dart';

/// 資格
class Certification extends StatelessWidget {
  const Certification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardButton(
      title: 'Certification Name',
      leading: Icon(Icons.folder),
      onTap: () {},
    );
  }
}
