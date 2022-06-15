



import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( 
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 3,
        title: const Text(
          'Home work 5th: Dice',
        ),
      ),
      body: DiceApp(),
    ),
  ));
}


 class DiceApp extends StatefulWidget {

@override
  _DiceAppState createState()=>_DiceAppState();
 }
 
 
 
 class _DiceAppState extends State<DiceApp> {
  var LeftImageNumber=2;
  var RightImageNumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            
            child:
            TextButton(
              onPressed: (){
                setState(() {
                  LeftImageNumber++;
                });
                
            
                print('left button num$LeftImageNumber');
              },
              child: Image.asset('images/$LeftImageNumber.png'),
            ),
          ),
  
          Expanded(
            child: TextButton(
              onPressed: (){
               setState(() {
                 RightImageNumber++;
               });

                print('right button num$RightImageNumber');
              },
              child: Image.asset('images/$RightImageNumber.png'),
              ),
          ),
  
        ],
      ),
    );
  }
 }