import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee',
            style: TextStyle(
              color: Colors.black
          
             ),
            ),
          ),
          backgroundColor: Colors.teal
        ),
        body: DicePage(),
      ),
    ),
  );
}


 
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
    int rightDice = 1;
   var randm = new Random();
  @override
   @override
   @override
   
  Widget build(BuildContext context) {
     
     void changeLeft(){
       
        leftDice = randm.nextInt(6)+1;
       
}
    void changeRight(){
        
        rightDice = randm.nextInt(6)+1;
       
}
    void changeBoth(){
      rightDice = randm.nextInt(6)+1;
       leftDice = randm.nextInt(6)+1;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
          Container(
            child: FlatButton(  
                onPressed: (){
                  setState(() {
                    changeBoth();
                  }
                  );
                  
                },
                child: Image.asset('images/dice.png'),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 10.0),
          ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: FlatButton(
                          onPressed: (){
                            setState(() {
                              changeLeft();
                            });
                            
                          },
                          child: Image.asset('images/dice$leftDice.png'),
              )
              ),
            Expanded(
              flex: 2,
              child: FlatButton(
                          onPressed: (){
                            setState(() {
                              changeRight();
                            });
                            
                          },
                          child: Image.asset('images/dice$rightDice.png'
                ),
              ),
              )
          ],
        ),
      ],
    );
  }
}

