import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts/history.dart';

void main() {
  runApp(const MyApp());
  // runApp(const History()); // Aktifkan baris ini dan komentari baris di atas untuk ke halaman history
}

final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr1Dp-Kmn14Ac2lwKAZxZkwkpipIZlWKtlUg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6pbaXH_tz-CUYWQerjzvdjorDu6eCww9pvQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI5q8SMlEAc4o9A1aGvvu7i9sJbDSEVsHUVA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZWP_KI9UO-V_ayp0iizOUGfM7CgRintFoFg&usqp=CAU',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToIhy4KyY-ALuwCR9Z3_zCTW--fU_3agJjOItWx2hLBA&s',
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 2, left: 2),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: const Color.fromARGB(255, 195, 195, 195)),
                        ),
                        child: const IconButton(
                          icon: Icon(Icons.confirmation_number_outlined,
                              color: Colors.black),
                          onPressed: null,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 2, left: 2),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: const Color.fromARGB(255, 195, 195, 195)),
                        ),
                        child: const IconButton(
                          icon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 380,
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 39, 26),
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
                                      'Rp 0',
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
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: const Color.fromARGB(255, 206, 206, 206)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.payments,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        onPressed: null,
                      ),
                      Text(
                        'TopUp',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.money,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        onPressed: null,
                      ),
                      Text(
                        'Send Money',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.airplane_ticket,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        onPressed: null,
                      ),
                      Text(
                        'Send Ticket',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.grid_view,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        onPressed: null,
                      ),
                      Text(
                        'See All',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.smartphone,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'Pulsa/Data',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.bolt,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'Electricity',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.content_paste,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'BPJS',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.sports_esports,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'mgames',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 3),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.cast,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'Cable TV & Internet',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.invert_colors,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'PDAM',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.price_change,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'Kartu Uang Elektronik',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Color.fromARGB(255, 199, 17, 17),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Text(
                        'More',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 130,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
            ),
            Row(
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 255, 0, 0)
                            .withOpacity(0.6)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 203, 39, 27),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.qr_code_scanner),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 204, 52, 41),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.description), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Pay'),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
