

import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

import 'package:zire/signup.dart';

class Welcome extends StatelessWidget {
  static const String idScreen = "welcome";
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/back1.png"),fit: BoxFit.fill)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: height*.15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width:35 ,),
                  Text("Welcome", style: TextStyle(
                    fontSize: 45
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 45,),
                  Text("Nice to see you again", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 17),)
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 35,

                  ),
                  AnimatedButton(
                      enabled: true,
                      height: 50,
                      width: 130,
                      onPressed: () =>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => SignUpView(authFormType: AuthFormType.signIn),)), child: Text("Login", style: TextStyle(fontSize:22, color: Colors.white  ),))

                ],
              ),
              SizedBox(
                height: height*.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?", style: TextStyle(
                    color: Colors.grey,fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () =>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new SignUpView(authFormType: AuthFormType.signUp),)),
                  child:
                  Text("Register",style: TextStyle(color: Color(0xFFFE7550),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  decoration: TextDecoration.underline),)
                  )],
              )
            ],
          ),
        ),
      ),
   ),);
  }
}
