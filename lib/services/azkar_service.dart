import 'package:dio/dio.dart';
import 'package:minhaj/models/zekr.dart';

class AzkarService {
  final Dio dio = Dio();

  Future<List<ZekrModel>> getAzkarAlsabah() async {
    var response = await dio
        .get("https://ahegazy.github.io/muslimKit/json/azkar_sabah.json");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> azkarElsabah = jsonData["content"];

    List<ZekrModel> azkarElsabahList = [];

    for (var zekr in azkarElsabah) {
      ZekrModel zekrModel = ZekrModel(
        zekrText: zekr["zekr"],
        repeat: zekr["repeat"],
        benefit: zekr["bless"],
      );
      azkarElsabahList.add(zekrModel);
    }
    return azkarElsabahList;
  }
}
