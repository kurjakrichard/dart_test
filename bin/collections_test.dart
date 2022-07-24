class CollectionsTest {
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

  void repeat() {
    print(conditionList);
    print(conditionList[0].toList());
    var countryList = [
      'Országok listája:',
      for (var country in countries) 'Ország: $country',
    ];
    print(newList.runtimeType);
    hel.add('hi'); //Ez nem működik unmodifiable listán.
    print(hel.toString());
    print(countryList);
  }
}
