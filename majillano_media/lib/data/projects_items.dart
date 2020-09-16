import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:majillano_media/data/articlemodal.dart';

class News {
  List<PModal> news = [];

  Future<void> getNews() async {
    String url = "http://media.majillanosoft.com/api/v1/projects";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    jsonData["articles"].forEach((element){

    });
  }


}