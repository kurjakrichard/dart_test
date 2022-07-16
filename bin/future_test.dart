import "dart:async";

Future<String> myLongRunningFunction() => Future.delayed(
      Duration(seconds: 3),
      () {
        return 'Hello Future';
      },
    );
