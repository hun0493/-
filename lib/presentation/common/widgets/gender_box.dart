import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderBox extends StatefulWidget {
  final Function(Gender gender) onChanged;
  const GenderBox({super.key, required this.onChanged});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  Gender _gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Text('Gender', style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text('Male', style: TextStyle(fontSize: 18)),
              Switch.adaptive(
                vlaue: _gender = Gender.female,
                onChanged: (value) {
                  //UI 변경 코드
                  //setState(() {
                    //기본 방법
                    //if (value) {
                     // _gender = Gender.female;
                    //} else {
                      //_gender = Gender.male;
                    //}
                    _gender = value //
                    ?Gender.female
                    :Gender.male;
                  });


                  widget.onChanged(_gender);
                },
              ),
              Text('Female', style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}
