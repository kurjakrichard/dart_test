class DynamicTest {
//dynamic típus működésének a tesztelése

  void dynamicTest() {
    dynamic test;
    test = 3;
    print('$test típusa ${test.runtimeType}');
    test = 'hello word';
    print('$test típusa ${test.runtimeType}');
  }
}
