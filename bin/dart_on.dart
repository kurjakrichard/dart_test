// ignore_for_file: unused_local_variable

void main(List<String> args) {
  print(4 / 3);
  int _result = 4 ~/ 3; //egész osztás
  print(_result);
  String text = "szöveg";
  double szam = 2.2;
  dynamic valami = 2;
  valami = "szöveg";
  valami = szam.toString();
  valami = "2";
  int szaam = int.parse(valami);
  num szaamm = 3.0;
  double szaaam = szaamm as double;
  print(szaaam.runtimeType);
}
