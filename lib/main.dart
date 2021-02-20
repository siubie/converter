import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // text controller
  TextEditingController etInput = new TextEditingController();
  //variabel berubah
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;

  _konversiSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _reamur = 4 / 5 * _inputUser;
      _fahrenheit = 9 / 5 * _inputUser + 32;
      _kelvin = _inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                decoration:
                    InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: etInput,
                keyboardType: TextInputType.number,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Kelvin"),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              _kelvin.toStringAsFixed(2),
                              style: TextStyle(fontSize: 36),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Reamur"),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              _reamur.toStringAsFixed(2),
                              style: TextStyle(fontSize: 36),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Fahrenheit"),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              _fahrenheit.toStringAsFixed(2),
                              style: TextStyle(fontSize: 36),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: _konversiSuhu,
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text("Konversi Suhu"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
