import 'dart:async';
import 'dart:typed_data';

import 'package:biomedicalfinal/bluetoothscreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:biomedicalfinal/screen3.dart';
import 'package:biomedicalfinal/screen4.dart';
import 'package:biomedicalfinal/screentwo.dart';
import 'package:biomedicalfinal/splashscreen.dart';
import 'package:biomedicalfinal/splashscreenfinal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home:splashscreenfinal(),
        routes:{

          '/screentwo':(context) =>BluetoothScreen(),
          '/screenthree':(context) =>screenthree(),
          '/screenfour':(context) =>screenfour(),
        }

    );
  }
}