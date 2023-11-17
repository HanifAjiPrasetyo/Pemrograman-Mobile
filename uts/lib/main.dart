import 'package:flutter/material.dart';
import 'package:uts_/wg/banner.dart';
import 'package:uts_/wg/category.dart';
import 'package:uts_/wg/card.dart';
import 'package:uts_/wg/top.dart';
import 'package:uts_/wg/user_card.dart';
import 'package:uts_/pages/history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> body = [
    const MainHomePage(),
    const History(),
    // Center(
    //   child: Image.asset(
    //     'assets/images/test.jpg',
    //     width: 50,
    //   ),
    // ),
    // Center(
    //   child: Image.asset(
    //     'assets/images/test.jpg',
    //     width: 50,
    //   ),
    // ),
    // Center(
    //   child: Image.asset(
    //     'assets/images/test.jpg',
    //     width: 50,
    //   ),
    // ),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Hanif',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xffF7F8FD),
        body: body[_currentIndex],
        floatingActionButton: FloatingActionButton(
          elevation: 25,
          onPressed: () => {
            setState(() {
              _currentIndex = 2;
            })
          },
          backgroundColor: const Color(0xffE82529),
          foregroundColor: Colors.white,
          child: const Icon(
            Icons.qr_code_scanner,
            size: 32,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xffE82529),
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code_scanner,
                size: 18,
              ),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

class MainHomePage extends StatelessWidget {
  const MainHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TopBar(),
        SizedBox(height: 16),
        UserCard(),
        SizedBox(height: 16),
        MainFeatureCard(),
        SizedBox(height: 24),
        Category(),
        SizedBox(height: 24),
        BannerSlider(),
      ],
    );
  }
}
