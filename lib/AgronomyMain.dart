import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AgronomyMain extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Birinchi sahifa"),
      // ),
      body:
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/categories/agronomy.png'),
                    fit: BoxFit.fill)),
          ),


        ],
      ),



    );
  }
}