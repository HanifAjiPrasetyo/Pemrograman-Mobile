import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 30),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToIhy4KyY-ALuwCR9Z3_zCTW--fU_3agJjOItWx2hLBA&s',
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 240, 233, 233),
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(right: 10),
                        child: const ButtonBar(
                          children: [
                            Icon(Icons.price_change),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(255, 240, 233, 233),
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(right: 10),
                        child: const ButtonBar(
                          children: [
                            Icon(Icons.heart_broken),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 380,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'HI, HANIF AJI PRASETYO',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Your Balance'),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Rp 10.184',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Bonus Balance'),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      '0',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              padding: const EdgeInsets.all(10),
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 206, 206, 206))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.money,
                            size: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'TopUp',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.card_membership_outlined,
                            size: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Send Money',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.airplane_ticket,
                            size: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Ticket Code',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.dashboard,
                            size: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'See All',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          size: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'See All',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          size: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'See All',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          size: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'See All',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          size: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'See All',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          size: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'See All',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          size: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'See All',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbOx5rW0hIHJ9Y4zJnQr_BPj8ELCLzaD0Q6w&usqp=CAU',
                      width: 200,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
