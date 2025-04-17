// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const WhiteBox({Key? key, this.padding, required this.child})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
