import 'package:flutter/material.dart';

class JobsPage extends StatelessWidget {
  Future<String> createAlertDialog( BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("your service ID"),
        content: TextField(
          controller: customController ,
        ) ,
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("submit"),
            onPressed: () {

              Navigator.of(context).pop(
                  customController.text.toString()
              );
            },
          )
        ],
      );
    });

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton (
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            createAlertDialog(context).then((onValue) {
              SnackBar mysnackbar = SnackBar(content: Text("Hello $onValue "));
              Scaffold.of(context).showSnackBar(mysnackbar);

            });
          },
          child: Text ('proceed', style: TextStyle( fontSize: 20.0),),
        ),
      ),

    );
  }
}
