class nullableTest {
  void repeat() {
    late String szia;
    szia = 'szia';
    print(szia);
    String? hello; //Nullable változó
    print(hello ?? 'Null value!');
    hello = "Helló Ricsi!";
    //print(hello?.length); // Így lehet csak futtatni, ha null a változó értéke.
    //print('szoveg $hello!'); //! jellel kasztolom nem null változóra. Itt hibára fut, ha mégis null.
  }
}
