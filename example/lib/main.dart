import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  bool _granted = false;
  MethodChannel _channelContact =
  MethodChannel('ch.upte.modularPermissionsContact');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Modular Contact Permission'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                borderSide: BorderSide(color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Check Read Contact Permission',
                    style: Theme.of(context).textTheme.button,
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () async {
                  final String info = await _channelContact
                      .invokeMethod('checkContactPermission');
                  setState(() {
                    _granted = info == "granted";
                  });
                },
              ),
              OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                borderSide: BorderSide(color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Check Write Contact Permission',
                    style: Theme.of(context).textTheme.button,
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () async {
                  final String info = await _channelContact
                      .invokeMethod('checkWriteContactPermission');
                  setState(() {
                    _granted = info == "granted";
                  });
                },
              ),
              OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                borderSide: BorderSide(color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Request Read Contact Permission',
                    style: Theme.of(context).textTheme.button,
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () async {
                  final String info = await _channelContact
                      .invokeMethod('requestContactPermission');
                  setState(() {
                    _granted = info == "granted";
                  });
                },
              ),
              OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                borderSide: BorderSide(color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Request Write Contact Permission',
                    style: Theme.of(context).textTheme.button,
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () async {
                  final String info = await _channelContact
                      .invokeMethod('requestWriteContactPermission');
                  setState(() {
                    _granted = info == "granted";
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contact Permission is ${_granted ? 'granted' : 'not granted'}',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}