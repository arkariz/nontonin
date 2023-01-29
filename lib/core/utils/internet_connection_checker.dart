abstract class InternetConnection {
  Future<bool> hasConnection();
}

class InternetConnectionCheck implements InternetConnection {
  @override
  Future<bool> hasConnection() async {
    return await InternetConnectionCheck().hasConnection();
  }
}
