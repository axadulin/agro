import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          Stack(
          alignment: const Alignment(0.6, 0.6),
      children: [
        Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: 400,
        height: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/categories/agronomy.png'),
                fit: BoxFit.fill)),
          child: RaisedButton(
            color: Colors.transparent,
            onPressed: () { Navigator.pop(
              context,
            ); },
            child: Row(
              children: [

                Icon(Icons.arrow_back_rounded, color: Colors.white,size: 40,),
               Padding(
                   padding: EdgeInsets.only(left:20),
                child: Text("Dexqonchilik",

                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black87,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],

                      fontSize: 38,
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),),
              ],
            ),
          ),
        ),
      ],
    ),
          Container(


          ),


        ],
      ),



    );
  }
}