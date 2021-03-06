import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'pages.dart';
import 'hire_cat.dart';
import 'dialog.dart';
import 'package:zire/signup.dart';

class Home extends StatefulWidget {
  static const String idScreen = "homepage";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.00,
      child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/Electrican.jpg'),
            AssetImage('images/mason.jpg'),
            AssetImage('images/mechanic.jpg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('zire'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}


              ),



        ],
      ),

          drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(accountName: Text(" ola"),
              accountEmail: Text("ola@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.blue
              ),
            ),

            InkWell(

              onTap: (){},
              child:

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),


            ),),
            InkWell(
              onTap: (){},
              child:
              ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person),

              ),),
            InkWell(
              onTap: (){},
              child:
              ListTile(
                title: Text("my hires"),
                leading: Icon(Icons.work),

              ),),
            InkWell(
              onTap: (){},
              child:
              ListTile(
                title: Text("jobs"),
                leading: Icon(Icons.handyman),

              ),),
            InkWell(
              onTap: (){},
              child:
              ListTile(
                title: Text("Help"),
                leading: Icon(Icons.help),

              ),),
            InkWell(
              onTap: (){},
              child:
              ListTile(
                title: Text("settings"),
                leading: Icon(Icons.settings),

              ),),
            InkWell(
              onTap: () =>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => SignUpView(authFormType: AuthFormType.signIn),)),


              child:
              ListTile(
                title: Text("Log out"),
                leading: Icon(Icons.person),

              ),),
          ],
        ),


      ),
      body: new ListView(
        children: <Widget>[


          image_carousel,

         new Padding(padding: const EdgeInsets.all(5.0),
         child: new Text("Hire"),),

          Container(
            height: 320.0,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hire_cat(),
            ),
          ),










      ],
      ),


      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.work ),

       onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new JobsPage() )),


    ),


    );

  }
}
