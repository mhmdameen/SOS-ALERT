import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class Detect extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Detect> {
  List<double> _accelerometerValues = [0, 0, 0];

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        _accelerometerValues = <double>[event.x, event.y, event.z];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Accelerometer Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Accelerometer Values:'),
              Text('X: ${_accelerometerValues[0]}'),
              Text('Y: ${_accelerometerValues[1]}'),
              Text('Z: ${_accelerometerValues[2]}'),
            ],
          ),
        ),
      ),
    );
  }
}
