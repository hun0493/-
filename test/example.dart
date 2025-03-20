void main() {
  var index = 0; // 정수형 변수 선언

  try {
    throw Exception('Error'); // 예외 발생
    index = 1; // 도달할 수 없음 (unreachable)
    print('Try'); // 도달할 수 없음 (unreachable)
  } catch (e) { // catch 문법 수정
    print('catch');
  } finally {
    print('finally'); // 항상 실행됨
  }
}
