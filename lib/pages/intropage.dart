import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Title
            Text('Gues The Number',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.deepPurple[700],
                  fontWeight: FontWeight.bold
              ),),

            SizedBox(height: 40,),
            //Icon
            Container(
                height: 100,
                width: 100,
                child: Image.asset('lib/assets/puzzle.png'),
            ),

            SizedBox(height: 13,),
            //Text
            Text('You Wanna Check Your Brain Power\nSo, Let\' Play',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),

            SizedBox(height: 18,),
            //Play Button
            GestureDetector(
              onTap: (){
                  Navigator.pushNamed(context, '/GamePage');
              },
              child: Container(
                height: 30,
                width: 150,
                child: Center(
                  child: Text('Play',style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[900],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
