import 'package:http/http.dart' as http;
import 'dart:convert';

import 'models/json/model.dart';



const url1 = "http://dummy.restapiexample.com/api/v1/employees";
const url2 = "http://192.168.88.231:8080/clients";
const url3 = "https://rest.yozyovonbaliqchilik.uz/users";
class GetEmployee {
  String getPath() {
    return url3;
  }

  Future<List<Employees>> getEmployees() async {
    final res = await http.get(getPath());

    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      List data = json['data'];
      return data.map((employees) => new Employees.fromJson(employees)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}