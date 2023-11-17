import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const KonverterSuhu());
}

class KonverterSuhu extends StatefulWidget {
  const KonverterSuhu({super.key});

  @override
  State<KonverterSuhu> createState() => _KonverterSuhuState();
}

class _KonverterSuhuState extends State<KonverterSuhu> {
  double celsius = 0.0;
  double kelvin = 273.15;
  double reamour = 0.0;

  void _convert() {
    setState(() {
      kelvin = celsius + 273.15;
      reamour = celsius * 4 / 5;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Konverter Suhu',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Masukkan Suhu dalam Celcius'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onChanged: (value) {
                  setState(
                    () {
                      celsius = double.tryParse(value) ?? 0.0;
                    },
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 30, bottom: 30, right: 20, left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Suhu Dalam Kelvin',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '${kelvin.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 30, bottom: 30, right: 20, left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Suhu Dalam Reamour',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '${reamour.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  _convert();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.indigo),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Konversi Suhu',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
