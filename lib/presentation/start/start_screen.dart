import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  //숏컷 커맨드 + .
  //Colors.blueAccent,
  //앱 이름
  Widget _buildappname() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  //타이틀
  Widget _buildTitle() {
    return Text(
      'Get Started with\nTracking Your Health!',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }

  //설명
  Widget _buildDescription() {
    return Text(
      "Calculate your BMI and stay on top of your wellness journey, effortlessly.",
      style: TextStyle(color: Color(0xFFC6C3F9), fontSize: 15),
    );
  }

  //시작버튼
  Widget _buildbutton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text("Get Started")),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30), //padding 여백
            width: 280,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildappname(),
                SizedBox(height: 60),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    SizedBox(height: 15),
                    _buildDescription(),
                  ],
                ),
                SizedBox(height: 40),
                _buildbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
