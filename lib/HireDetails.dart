import 'package:flutter/material.dart';

class hireDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DefaultTabController(
      length: 2,
      child:
      Scaffold(
          appBar: new AppBar(
            elevation: 0.0,
            backgroundColor: Colors.blue,
            title: Text('hire entries'),
            bottom: TabBar(

              tabs: <Widget>[
               Tab(icon: Icon(Icons.calendar_view_day_outlined)),
               Tab(icon: Icon(Icons.calendar_today))



                    ],
                  ),
                ),
      body: TabBarView(
        children: <Widget>[
          DailyAction(),
          Contract(),
        ],

          ),
        ),));
  }
} 

class DailyAction extends StatefulWidget {
  DailyAction({Key key, this.title}) :super(key: key);
  final String title;
  @override
  _DailyActionState createState() => _DailyActionState();
}

class _DailyActionState extends State<DailyAction> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  String _JobDescription ;
  String _Address ;

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }


  void _Post(){

  }


  String valueChoose;
  List listItem = [
    '1 Day', '2 Days', '3 Days',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        child: Card(
          child: Column(
              children:  <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Daily selected \n note: Only available for hires less than four (4) days \n Daily pay is fixed and non negotiable"),
                ),



                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius:  BorderRadius.circular(7)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      hint: Text("select days: "),

                      dropdownColor: Colors.grey,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,

                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;

                        });
                      },
                      items: listItem.map((valueItem)  {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      ),
                  ),
                  ),


                Container(
                  child: new Form(
                    key: formKey,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextFormField(
                            decoration: new InputDecoration(labelText: "job Description"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextFormField(
                            decoration: new InputDecoration(labelText: "Address"),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RaisedButton(
                            child: new Text("Post"),
                            onPressed:_Post,
                          ),
                        )


                      ],
                    ),

                  ),
                ),]
          ),



        ),
      ),
    );

  }
}

class Contract extends StatefulWidget {
  Contract({Key key, this.title}) :super(key: key);
  final String title;
  @override
  _ContractState createState() => _ContractState();
}

class _ContractState extends State<Contract> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  String _JobDescription ;
  String _Address ;

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }


  void _Post(){

  }


  String valueChoose;
  List listItem = [
    '1 Day', '2 Days', '3 Days',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        child: Card(
          child: Column(
              children:  <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Contract selected \n note: Only available for hires higher than four (4) days \n Contract pay is negotiable"),
                ),



                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius:  BorderRadius.circular(7)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      hint: Text("select days: "),

                      dropdownColor: Colors.grey,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,

                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;

                        });
                      },
                      items: listItem.map((valueItem)  {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),


                Container(
                  child: new Form(
                    key: formKey,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextFormField(
                            decoration: new InputDecoration(labelText: "job Description"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextFormField(
                            decoration: new InputDecoration(labelText: "Address"),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new RaisedButton(
                            child: new Text("Post"),
                            onPressed:_Post,
                          ),
                        )


                      ],
                    ),

                  ),
                ),]
          ),



        ),
      ),
    );

  }
}