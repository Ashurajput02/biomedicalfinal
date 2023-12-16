import 'dart:async';
import 'dart:typed_data';
import 'package:biomedicalfinal/screen3.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter/cupertino.dart';

class BluetoothScreen extends StatefulWidget {
  const BluetoothScreen({Key? key}) : super(key: key);

  @override
  _BluetoothScreenState createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  late BluetoothConnection _connection;
  bool _isConnected = false;
  String deviceAddress = "YOUR_HC06_BLUETOOTH_ADDRESS"; // Replace with your HC-06 Bluetooth address

  @override
  void initState() {
    super.initState();
    connectToDevice(deviceAddress);
  }

  Future<void> connectToDevice(String address) async {
    try {
      _connection = await BluetoothConnection.toAddress(address);
      print('Connected to Arduino');
      setState(() {
        _isConnected = true;
      });

      _connection.input!.listen((Uint8List data) {
        // Handle received data as needed
        String receivedData = String.fromCharCodes(data);
        print('Received Data: $receivedData');
      });
    } catch (exception) {
      print('Cannot connect, exception occurred: $exception');
    }
  }

  void sendData(String data) async {
    data = data.trim();
    if (_isConnected) {
      try {
        List<int> list = data.codeUnits;
        Uint8List bytes = Uint8List.fromList(list);
        _connection.output.add(bytes);
        await _connection.output.allSent;
        if (kDebugMode) {
          print('Data sent successfully');
        }
      } catch (e) {
        print('Error sending data: $e');
      }
    } else {
      print('Connection not yet initialized');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("Connect to Arduino"),
            onPressed: (){
              print('Connect Button pressed');
              connectToDevice(deviceAddress);
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return screenthree();

              },
              ),);
            },
          ),
          SizedBox(height: 30.0),
          if (_isConnected)
            StreamBuilder(
              stream: _connection.input,
              builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
                if (snapshot.hasData) {
                  String receivedData = String.fromCharCodes(snapshot.data!);
                  return Text("Received Data: $receivedData");
                } else {
                  return Text("Waiting for data...");
                }
              },
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _connection.close();
    super.dispose();
  }
}