import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0; // 클릭 횟수 저장 변수

  void_handleIncreaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Flutter Demo')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          void_handleIncreaseCount();
        }, // 버튼 클릭 시 호출
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬
              children: [
                Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 34)),
                SizedBox(height: 20), // 텍스트 간격 추가
                Text(
                  '$_count', // 현재 클릭 횟수를 표시
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
