
import 'package:biomedicalfinal/screen3.dart';
import 'package:flutter/material.dart';

class screentwo extends StatelessWidget{
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
              child: const Text('CONNECT'),

              onPressed: (){
    print('Connect Button pressed');
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return screenthree();

    },
    ),);
    }
            ),),
          )
    )
    ;



  }
}

