import 'dart:convert';
import 'package:http/http.dart';
import '../bussines_logic/user_model.dart';

class ApiService {
  String endpoint = 'https://reqres.in/api/users?page=1';

  Future<List<UserModel>> getUser() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromjson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
