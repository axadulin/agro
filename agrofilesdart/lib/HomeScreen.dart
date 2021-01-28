import 'package:agro/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Animation/FadeAnimation.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/navigation_bloc.dart';
import 'bloc/navigation_event.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget _cardsView(int index){
    return GestureDetector(
      onTap: (){
        selectIndex = index;
        BlocProvider.of<NavigationBloc>(context).add(ResidentsClickedEvent());
      },
      child: Container(
        height: 180,
        width: double.infinity,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(categoryModel[index].image), fit: BoxFit.cover,),
            boxShadow: [
              BoxShadow(
                  offset: Offset(2,3),
                  color: Colors.black26,
                  blurRadius: 10
              )
            ]
        ),
        child: Text(
          categoryModel[index].title,
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
              fontWeight: FontWeight.w700
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: categoryModel.length,
              itemBuilder: (context, index){
                return _cardsView(index);
              }
          ),
        )
    );
  }
}











//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body:
//     ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         Container(
//           height: 90,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(
//                     'assets/images/dexqonchilik.png'
//                 ),fit: BoxFit.fill
//             ),
//           ),
//
//           child: const Center(child: Text('Dexqonchilik\nmahsulotlari',
//             style: TextStyle(
//             fontSize: 36,
//             fontStyle: FontStyle.italic,
//             color: Colors.white,
//           ),),),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Baliqchilik\nmahsulotlari')),
//         ),
//         Container(
//           height: 70,
//           color: Colors.amber[600],
//
//           child: const Center(child: Text('Parrandachilik\nmahsulotlari')),
//         ),
//       ],
//     )
//
//        );
//   }
// }




