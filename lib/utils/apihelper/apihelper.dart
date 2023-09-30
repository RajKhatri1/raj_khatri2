import 'dart:convert';

import 'package:http/http.dart' as http;

class Apihelper{
  static final Apihelper helper = Apihelper();
  Apihelper? apihelper;


  Future callapi()
  async {
    String link = "https://praticle-service.s3.ap-south-1.amazonaws.com/red_and_white_api.json";
    Uri uri = Uri.parse(link);
    var resp =await  http.get(uri);
    var json = jsonDecode(resp.body);
    print(json);
    return json;

  }
}