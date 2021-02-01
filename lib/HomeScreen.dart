import 'package:agro/AgronomyMain.dart';
import 'package:agro/LoginPage.dart';
import 'package:agro/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'AnimalsFarmMain.dart';
import 'AnimalsFarmMain2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
GlobalKey<ScaffoldState> _globalKey=GlobalKey<ScaffoldState>();


  Widget _cardsView(int index) {
    return

      GestureDetector(
      onTap: () {
       selectIndex = index;
       switch (selectIndex){
         case 0:    Navigator.push(context,
           MaterialPageRoute(builder: (context) => AgronomyMain()),
         );
         break;
         case 1: Navigator.push(context,
           MaterialPageRoute(builder: (context) => AnimalsFarmMain2()),
         );
           break;
       }

        // BlocProvider.of<NavigationBloc>(context).add(ResidentsClickedEvent());
      },
      child: Container(
        height: 150,
        width: double.infinity,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(categoryModel[index].image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                  offset: Offset(2, 3), color: Colors.black26, blurRadius: 10)
            ]),
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
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //     designSize: Size(360, 690),
    // allowFontScaling: false,);
    child: return MaterialApp(

      home:Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white70,
      //   title: Text("Drawer app"),
      // ),
      drawer: Drawer(
        key: _globalKey,
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Developer Libs"),
              accountEmail: Text("contact@developerlibs.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Developer"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("Libs"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/home_header2.png'),
                    fit: BoxFit.fill)),
          ),
          Align(alignment: Alignment.topLeft,
          child: Text(  "Maxsulotlar", style: TextStyle(
            // shadows: [
            //   Shadow(
            //     blurRadius: 10.0,
            //     color: Colors.black87,
            //     offset: Offset(5.0, 5.0),
            //   ),
            // ],
            fontSize: 26,
            color: Colors.black,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600


          ),
          ),
          ),
          Expanded(child:ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: categoryModel.length,
                itemBuilder: (context, index) {
                  return _cardsView(index);
                }),
          ),
        ],
      ),


      ),
    );
  }
}
