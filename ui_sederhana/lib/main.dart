import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('BERITA TERBARU'),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('PERTANDINGAN HARI INI'),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(3),
                  color: const Color.fromARGB(255, 185, 50, 209),
                  child: Column(
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL_fieLjZM68gUk64XMkYHyX6N2mHnbEitvA&usqp=CAU',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                        alignment: Alignment.topCenter,
                      ),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: const Text(
                          'Costa Mendekat ke Palmeiras',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          'Transfer',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(2),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        width: 407,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCmhPxuW7k-pfQDWGhoBE2ZkigVVThbOk-pA&usqp=CAU',
                                  fit: BoxFit.cover,
                                  width: 180,
                                  height: 100,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  width: 180,
                                  child: const Text(
                                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 407,
                        padding: const EdgeInsets.all(15),
                        color: Colors.white,
                        child: const Text('Barcelona Feb 13, 2021'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(2),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        width: 407,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCmhPxuW7k-pfQDWGhoBE2ZkigVVThbOk-pA&usqp=CAU',
                                  fit: BoxFit.cover,
                                  width: 180,
                                  height: 100,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  width: 180,
                                  child: const Text(
                                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 407,
                        padding: const EdgeInsets.all(15),
                        color: Colors.white,
                        child: const Text('Barcelona Feb 13, 2021'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(2),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        width: 407,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCmhPxuW7k-pfQDWGhoBE2ZkigVVThbOk-pA&usqp=CAU',
                                  fit: BoxFit.cover,
                                  width: 180,
                                  height: 100,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  width: 180,
                                  child: const Text(
                                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 407,
                        padding: const EdgeInsets.all(15),
                        color: Colors.white,
                        child: const Text('Barcelona Feb 13, 2021'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 
