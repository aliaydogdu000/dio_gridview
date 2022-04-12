import 'package:dio/dio.dart';
import '../model/crypto_model.dart';

class Services {
  Future<List<CryptoModel>> getCryptoList() async {
    try {
      var response =
          await Dio().get("https://api2.binance.com/api/v3/ticker/24hr");
      List<CryptoModel> _cryptolist = [];
      if (response.statusCode == 200) {
        _cryptolist = (response.data as List)
            .map((e) => CryptoModel.fromJson(e))
            .toList();
      }
      return _cryptolist;
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }
}
