class ListInstance {
  ListInstance._();
  List list = List();
  static ListInstance _instance;
  static Future<ListInstance> getInstance() async {
    if (_instance == null) {
      _instance = ListInstance._();
    }
    return _instance;
  }

}