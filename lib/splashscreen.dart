import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ash extends StatelessWidget{
@override
Widget build(BuildContext context){
  return Scaffold(
    body:Container(
      color: Colors.white,
      child: Align(
        alignment:Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 138,
            ),
            Image.asset("assets/images/iiitn2.webp",width: 233,height: 186,),
            SizedBox(
              height:18,
            ),
            Text("In Collaboration with",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:24,
            ),),
            SizedBox(
              height:18 ,
            ),
            Image.asset("assets/images/aiimsfinal.png",width: 233,height: 186,),

          ],
        ),
      ),
    ),
  );
}
}