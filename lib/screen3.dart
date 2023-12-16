import 'package:biomedicalfinal/screen4.dart';
import 'package:flutter/material.dart';

class screenthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
            children: [
              SizedBox(height: 48),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  "Patient Name:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    textAlign: TextAlign.left, // Align text to the left
                    decoration: InputDecoration(
                      hintText: '',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),


              SizedBox(height: 22),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  "Patient Id:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: TextField(
                    textAlign: TextAlign.left, // Align text to the left
                    decoration: InputDecoration(
                      hintText: '',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),



              SizedBox(height: 22),
              Row(
                children:[Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Age:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                ),
                  SizedBox(width: 153),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      "Sex:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                  ),
              ]
              ),
              SizedBox(
                height: 15,
              ),
Row(
  children:[

    SizedBox(
                width: 131,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(),
                    ),
                    child: TextField(
                      textAlign: TextAlign.left, // Align text to the left
                      decoration: InputDecoration(
                        hintText: '',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
    SizedBox(
      width:100
    ),
    SizedBox(
      width: 131,
      height: 48,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(),
          ),
          child: TextField(
            textAlign: TextAlign.left, // Align text to the left
            decoration: InputDecoration(
              hintText: '',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    ),

            ],
          ),


              SizedBox(height: 22),
              Row(
                  children:[Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      "Visit Number:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                  ),
                    SizedBox(width: 73),
                    Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text(
                        "Weight:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Urbanist',
                        ),
                      ),
                    ),
                  ]
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children:[

                  SizedBox(
                    width: 131,
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(),
                        ),
                        child: TextField(
                          textAlign: TextAlign.left, // Align text to the left
                          decoration: InputDecoration(
                            hintText: '',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width:100
                  ),
                  SizedBox(
                    width: 131,
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(),
                        ),
                        child: TextField(
                          textAlign: TextAlign.left, // Align text to the left
                          decoration: InputDecoration(
                            hintText: '',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

SizedBox(
  height: 22,
),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 120,
                  height: 76,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.orange,
                    ),
                    child: Center(child: const Text('START')),
                    onPressed: () {
                      print("Start Button Pressed");
                    },
                  ),
                ),
              ),


              SizedBox(
                height: 22,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 120,
                  height: 76,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.red,
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: const Text('STOP')),
                    onPressed: () {
                      print("Stop  Button Pressed");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return screenfour();}));
                    },
                  ),
                ),
              ),
        ],
        ),
      ),
    )
    );
  }
}
