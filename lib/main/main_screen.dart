import 'package:daelim_2025/presentation/common/widgets/height_box.dart';
import 'package:daelim_2025/presentation/common/widgets/in_de_container.dart';
import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;

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
              heightBox(),
              //endregion
              WhiteBox(padding: EdgeInsets.all(25), child: SizedBox.shrink()),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {},
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
