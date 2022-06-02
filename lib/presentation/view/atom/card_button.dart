import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    required this.title,
    this.onTap,
    this.leading,
  }) : super(key: key);

  final String title;
  final Widget? leading;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        title: Text(title),
        leading: leading,
        onTap: onTap,
      ),
    );
  }
}
