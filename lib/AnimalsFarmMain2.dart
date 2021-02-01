import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'listpost.dart';
import 'models/Post.dart';
import 'models/json/model.dart';
import 'network_helper.dart';



class AnimalsFarmMain2 extends StatelessWidget {
  // final String title;
  //
  // AnimalsFarmMain({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body:
      Center(
          child: _employeesData()
      )
    );
  }

  FutureBuilder _employeesData(){
    return FutureBuilder<List<Employees>>(
      future: GetEmployee().getEmployees(),
      builder: (BuildContext context, AsyncSnapshot<List<Employees>> snapshot){
        if (snapshot.hasData) {
          List<Employees> data = snapshot.data;
          return _employees(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  ListView _employees(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
              child: _tile(data[index].login, data[index].tel, Icons.work)

          );
        }
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}