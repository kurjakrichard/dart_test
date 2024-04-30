import 'dart:async';

void main() async {
  await for (var number in counter()) {
    print('Eltelt idő: $number másodperc');
  }
}

Stream<int> counter() async* {
  for (int i = 1; true; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
