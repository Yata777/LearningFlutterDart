import 'dart:io';

void main() async {
  DataFetcher fetcher = DataFetcher();
  String data = await fetcher.getData();
  print(data);
}

class DataFetcher {
  Future<String> _getDataFromCloud() {
    sleep(Duration(seconds: 3));
    return Future.value("Data from cloud");
  }

  String _parseDataFromCloud({required String cloudData}) {
    return "Parsed Data";
  }

  Future<String> getData() async {
    //problem: Future type must be handled appropriately
    //Solution: Use async in method head, await in front of Future values.
    String _parsedData = await _getDataFromCloud().then((_value) => _parseDataFromCloud(cloudData: _value));
    return _parsedData;
  }
}
