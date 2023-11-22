import 'dart:math';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  //Hint Text
  String hint = 'Guess The Number';

  //Controller Start
  final start = TextEditingController();

  //Controller End
  final end = TextEditingController();

  //Controller Number
  final guessnumber = TextEditingController();

  //Count fixed
  int randomeNumber = 1;



  //Logic
  void Logic(){
    if(randomeNumber == 1){
      randomeNumber = Random().nextInt(int.parse(end.text) - int.parse(start.text) + 1) + int.parse(start.text);
    }
    setState(() {
     if(int.parse(start.text) <= int.parse(guessnumber.text) && int.parse(end.text) >= int.parse(guessnumber.text)){

       if(randomeNumber == int.parse(guessnumber.text)){
         hint = 'Win The Game'+randomeNumber.toString();
         guessnumber.clear();
         start.clear();
         end.clear();
       }else if(randomeNumber > int.parse(guessnumber.text)){
         hint  = 'Your number is less than, Increase Your Number';
       }else{
         hint = 'Your number is greater than, Decrease Your Number';
       }
     }else{
          hint = 'You Entered Out of Range';
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Logo
            Container(
              height: 100,
              width: 100,
              child: Image.asset('lib/assets/puzzle.png'),
            ),

            SizedBox(height: 30,),
            //Hint Text
            Container(
              padding: EdgeInsets.all(10),
              child: Text(hint,style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),),
            ),

            SizedBox(height: 40,),
            //Start Range Input
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7),
              height: 40,
              width: 230,
              child: TextField(
                controller: start,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.clear),
                    border: InputBorder.none,
                    hintText: 'Enter Start Range'),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            //End Range Input
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7),
              height: 40,
              width: 230,
              child: TextField(
                controller: end,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.clear),
                    border: InputBorder.none,
                    hintText: 'Enter End Range'),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            SizedBox(height: 30,),
            //Guess Number Input
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7),
              height: 40,
              width: 230,
              child: TextField(
                controller: guessnumber,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.clear),
                    border: InputBorder.none,
                    hintText: 'Enter Guess Number'),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            SizedBox(height: 40,),
            //Submit Button
            GestureDetector(
              onTap: (){
                if(start.text != '' && end.text != '' && guessnumber.text != ''){Logic();}
              },
              child: Container(
                child: Center(child: Text("Submit",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),)),
                padding: EdgeInsets.symmetric(horizontal: 7),
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[500],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
