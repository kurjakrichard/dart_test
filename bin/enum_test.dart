enum Status { notStarted, inProgress, completed, onHold }

enum Status2 {
  notStarted(value: 'Not Started'),
  inProgress(value: 'in Progress'),
  completed(value: 'completed'),
  onHold(value: 'on Hold');

  final String value;
  const Status2({required this.value});

  String get value2 {
    return 'Ez az enum értéke: $value';
  }

  @override
  String toString() {
    super.toString();
    return "The status is: $value";
  }
}
