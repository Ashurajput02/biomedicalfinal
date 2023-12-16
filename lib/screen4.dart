
import 'package:flutter/material.dart';

class screenfour extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Align(
        alignment: Alignment.center,
        child:Align(
            alignment:Alignment.center,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber,
                  padding: const EdgeInsets.all(25)),
              child: const Text('Generate Report'),

              onPressed: (){
                print('Generate button pressed');
              },)

        ),),
    );



  }
}

