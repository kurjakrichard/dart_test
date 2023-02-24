Iterable<int> myGeneratorFunction() sync* {
  print("Első elem");
  yield 1;
  print("Második elem");
  yield 2;
  print("Harmadik elem");
  yield 3;
}

Stream<int> myAsyncGeneratorFunction() async* {
  for (int i = 1; true; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
