import 'package:flutter/material.dart';

class TabBarViewListener extends StatefulWidget {
  @override
  _TabBarViewListenerState createState() => _TabBarViewListenerState();
}

class _TabBarViewListenerState extends State<TabBarViewListener>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    setState(() {
      _currentIndex = _tabController.index;
      print('index==$_currentIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarView Listener'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Tab 1 Content')),
          Center(child: Text('Tab 2 Content')),
          Center(child: Text('Tab 3 Content')),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     _tabController.animateTo(index);
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 1'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Tab 2'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tab 3'),
      //   ],
      // ),
    );
  }
}
