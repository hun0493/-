// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:daelim_2025/presentation/common/widgets/circle_icon_button.dart';
import 'package:daelim_2025/presentation/common/widgets/white_box.dart';

class InDeContainer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const InDeContainer({
    Key? key,
    required this.title,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //타이틀
          Text(title, style: TextStyle(fontSize: 18)),
          //숫자
          Text(
            '$value',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleIconButton(onTap: onMinus, icon: LucideIcons.minus),
              CircleIconButton(onTap: onPlus, icon: LucideIcons.plus),
            ],
          ),
        ],
      ),
    );
  }
}
