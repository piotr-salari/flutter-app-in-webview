import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new Scaffold(
        appBar: AppBar(
        title: Text("your task will be displayed here"),
          ),
        body: Center(
          child: Button()
          )
        )
      );
  }
}

class Button extends StatefulWidget {

  ButtonState createState() => ButtonState();

}

class ButtonState extends State<Button> {

  bool isEnabled = true ;

  enableButton(){

    setState(() {
      isEnabled = true;
    });
  }

  disableButton(){

    setState(() {
      isEnabled = false;
    });
  }

  sampleFunction(){

    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          height: 600.0,
          alignment: Alignment.center,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
             children:<Widget>[
               
            
               new Text("Task",
                          style: new TextStyle(
      fontSize: 40.0,
      fontFamily: "Bauhaus 93",
      color: Colors.orange[600],
                          )
               
             )],
             ),
              new Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
             children:<Widget>[
               
            
               new Text("your task is to create task Particulates",
                          style: new TextStyle(
      fontSize: 20.0,
                            
                    fontFamily: 'Ariel',
      color: Colors.black,
                          )
               
             )],
             ),
              new Row(),
              new Row(),
              new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
             children:<Widget>[
               
               new Text("Task Status : ",style: new TextStyle(
      fontSize: 20.0,
                            
                    fontFamily: 'Comic Sans MS',
      color: Colors.black,)),
               new Text(" ACCEPTED",style: new TextStyle(
      fontSize: 20.0,
                            
                    fontFamily: 'Comic Sans MS',
      color: Colors.green,))
             ]),
              new Row(
                
  mainAxisAlignment: MainAxisAlignment.center,
                
  children: <Widget>[
    
    new Text("Description : ",style: new TextStyle(
      fontSize: 14.0,
                            
                    fontFamily: 'Ariel',
      color: Colors.red[600])),
    new Text("task discriptions will be visible here",style: new TextStyle(
    fontSize: 14.0,fontFamily:'Ariel',color:Colors.red[600])),
    
  ],
),

              
             

              Container(
              height: 200.0,
                width: 200.0,
                
              ),
              
             
              
              
              new Row(
                
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
             RaisedButton(
                onPressed: isEnabled ? ()=> sampleFunction() : null,
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Start'),
              ),

              RaisedButton(
                onPressed: enableButton,
                color: Colors.orange[150],
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('pause'),
                
              ),

              ]),
              new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget>[
                   RaisedButton(
                onPressed: enableButton,
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('end task'),
                
              ),
                ]
              )

            ],
          ),
          
        ));
  }
}