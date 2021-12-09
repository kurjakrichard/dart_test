class nullableTest {
  void repeat() {
    late String szia;
    String? hello = null; //Nullable változó
    print(hello ?? 'Null value!');
    hello = "Helló Ricsi!";
    //print(hello?.length); // Így lehet csak futtatni, ha null a változó értéke.
    //print('szoveg $hello!'); //! jellel kasztolom nem null változóra. Itt hibára fut, ha mégis null.
    szia = 'szia';
    print(szia);

//dynamic típus működésének a tesztelése
    dynamic test;
    test = 'hello world';
    test = 3;
    print('$test.runtimeType $test');
    var test2 = 'hello word';
    test2 = 2 as String;
    print('$test2.runtimeType $test2');
  }
}
