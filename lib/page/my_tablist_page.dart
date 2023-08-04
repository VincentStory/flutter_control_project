import 'package:flutter/material.dart';

class MyDynamicTabListViewApp extends StatefulWidget {
  @override
  _MyDynamicTabListViewAppState createState() => _MyDynamicTabListViewAppState();
}

class _MyDynamicTabListViewAppState extends State<MyDynamicTabListViewApp> with TickerProviderStateMixin {
  late TabController _tabController;
  List<String> _tabTitles = ['Tab 1'];
  List<List<String>> _listData = [
    List.generate(20, (index) => 'Tab 1 Item $index'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabTitles.length, vsync: this);

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _addTab() {
    setState(() {
      int newIndex = _tabTitles.length + 1;
      _tabTitles.add('Tab $newIndex');
      _listData.add(List.generate(15, (index) => 'Tab $newIndex Item $index'));
      _tabController = TabController(length: _tabTitles.length, vsync: this);
      _tabController.addListener(() {
        print('mIndex==${_tabController.index}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态添加Tab和对应的ListView'),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabTitles.map((title) => Tab(text: title)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _listData.map((data) => MyListView(data: data)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTab,
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<String> data;

  const MyListView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index]),
        );
      },
    );
  }
}
