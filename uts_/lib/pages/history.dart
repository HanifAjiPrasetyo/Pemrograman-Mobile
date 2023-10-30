import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(24, 48, 24, 16),
          child: const Text(
            'Transaction History',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          child: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            tabs: const [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://i0.wp.com/www.mime.asia/wp-content/uploads/2020/04/45b.png?resize=1024%2C878&ssl=1',
                        height: 200,
                      ),
                      const Text(
                        'All transactions is completed',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                          'Any pending transactions will appear in this page',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              const Center(
                  child: Text(
                'All completed transactions will appear in this page',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ))
            ],
          ),
        )
      ],
    );
  }
}
