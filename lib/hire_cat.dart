import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zire/HireDetails.dart';

class Hire_cat extends StatefulWidget {
  @override
  _Hire_catState createState() => _Hire_catState();
}

class _Hire_catState extends State<Hire_cat> {
  var hire_list = [
    {
      "name": "Electrician",
      "picture":"images/Electrican.jpg",
    },
    {
      "name": "Carpentry",
      "picture": "images/carpentry.png",
    },
    {
      "name": "painter",
      "picture": "images/painter.png",
    },
    {
      "name": "plumber",
      "picture": "images/plumber.png",
    },
    {
      "name": "welder",
      "picture": "images/welder.png",
    },
    {
      "name": "mechanic",
      "picture":"images/mechanic.jpg",
    }, {
      "name": "mason",
      "picture":"images/mason.jpg",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: hire_list.length,
        gridDelegate:new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return single_hire(
          hire_name: hire_list[index]['name'],
          hire_picture: hire_list[index]['picture'],
        );
    }
  );
  }
}
class single_hire extends StatelessWidget {
  final hire_name;
  final hire_picture;

  single_hire({
    this.hire_name,
    this.hire_picture,
});
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Hero(
        tag: hire_name,
        child: Material(
          child: InkWell(onTap: () =>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new hireDetails(), )),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(hire_name, style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            child: Image.asset(hire_picture, fit: BoxFit.cover,)),
          ),


          )
        ),
      );

  }
}

