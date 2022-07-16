class gyujtemenyTest {
  var newList = List.unmodifiable(['szia', 'szevasz']);
  var hel = ['szia', 'szevasz'];
  var newMap = {1: 'hello', 2: 'világ'};
  var newSet = {1, 2, 3};
  var countries = ['Magyarország', 'Anglia'];

  // Feltételes elem hozzáadás
  var conditionList = [
    // ignore: dead_code
    if (true) {'siker'} else if (false) {'kudarc'}
  ];

  // Ciklikus elem hozzáadás csak for ciklus while nem nincs break, continue
  //var hi = [for (var elem in hel()) 'Köszönés: $his'];
  /** var countryList = [
    'Országok listája:',
    for (var country in countries()) 'Ország: $country',
  ];**/
  //var hel = print('helloka');

  //

  void repeat() {
    var countryList = [
      'Országok listája:',
      for (var country in countries) 'Ország: $country',
    ];
    print(newList.runtimeType);
    //print(hello);
    hel.add('hi'); //Ez nem működik unmodifiable listán.
    print(hel.toString());
    print(conditionList[0].toList());
    print(countryList);
  }
}
