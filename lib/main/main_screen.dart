import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/common/widgets/gender_box.dart';
import 'package:daelim_2025/presentation/common/widgets/height_box.dart';
import 'package:daelim_2025/presentation/common/widgets/in_de_container.dart';
import 'package:daelim_2025/presentation/common/widgets/white_box.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _HeightBox extends StatefulWidget {
  final Function(double height) onChanged;

  @override
  State<heightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<heightBox> {
  int _age = 0;
  int _weight = 0;
  double _height = 100.0;
  Gender _gender = Gender.male;

  void _onCalculated() {
    debugPrint('나이: $_age');
    debugPrint('몸무게: $_weight');
    debugPrint('키: $_height');
    debugPrint('성별: $_gender');
    final chHeight = _height.round() / 100;
    final bmi = _weight / (chHeight * chHeight);
    debugPrint('BMI: $bmi');

    context.goNamed(
      AppRoute.result.name,
      queryParameters: {'bmi': bmi.toStringAsFixed(2)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 35),
              Text('BMI CALCULATOR', style: TextStyle(fontSize: 20)),
              //#region 나이,몸무게 입력
              WhiteBox(child: Text('Example content in WhiteBox')),
              Row(
                spacing: 20,
                children: [
                  Expanded(
                    child: InDeContainer(
                      title: 'Age',
                      value: _age,
                      onMinus: () {
                        if (_age > 0) {
                          setState(() {
                            _age--;
                          });
                        }
                        debugPrint('age:마이너스');
                      },
                      onPlus: () {
                        setState(() {
                          _age++;
                        });
                        debugPrint('age:플러스');
                      },
                    ),
                  ),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight(KG)',
                      value: _weight,
                      onMinus: () {
                        if (_weight > 0) {
                          setState(() {
                            _weight--;
                          });
                        }
                        debugPrint('Weight:마이너스');
                      },
                      onPlus: () {
                        setState(() {
                          _weight++;
                        });
                        debugPrint('Weight:플러스');
                      },
                    ),
                  ),
                ],
              ),
              heightBox(
                onChanged: (height) {
                  _height = height;
                  debugPrint('키:$height');
                },
              ),

              //endregion

              //#region 성별
              GenderBox(
                onChanged: (gender) {
                  _gender = gender;
                },
              ),
              //#region Calculate Button
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => _onCalculated,
                  child: Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
