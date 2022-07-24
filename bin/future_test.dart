import "dart:async";

class FutureTest {
  void printFileContent() async {
    String fileContent = await downloadFile();
    print('The content of the file is --> $fileContent from await keyword');
  }

  void printFileContent2() {
    Future<String> fileContent = downloadFile();
    fileContent.then((resultString) {
      print('The content of the file is --> $resultString from then method');
    });
  }

  Future<String> downloadFile() {
    Future<String> result = Future.delayed(Duration(seconds: 2), () {
      return 'My secret file content';
    });
    return result;
  }
}
