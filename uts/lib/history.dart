import 'package:flutter/material.dart';

void main() {
  runApp(const History());
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            elevation: 5,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text(
              'Transaction History',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Pending',
                ),
                Tab(
                  text: 'Done',
                ),
              ],
            ),
          ),
          body: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Image.network(
                    'https://i0.wp.com/www.mime.asia/wp-content/uploads/2020/04/45b.png?resize=1024%2C878&ssl=1',
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Text(
                      'All transaction is completed!',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                      'Any pending transaction will appear in this page',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
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
      ),
    );
  }
}
