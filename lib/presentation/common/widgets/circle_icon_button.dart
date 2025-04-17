import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;

  const CircleIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          shape: BoxShape.circle,
          color: Color(0xff081854),
        ),
        child: Icon(icon, color: Colors.white, size: 35),
      ),
    );
  }
}
