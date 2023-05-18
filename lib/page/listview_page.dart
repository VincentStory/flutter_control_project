import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shrinkWrap: true,
          //处理scrollview嵌套listview，不显示问题
          itemBuilder: (context, index) {
            return Text('data'); //item view
          },
          separatorBuilder: (context, index) {
            //间隔线
            return const Padding(
              padding: EdgeInsets.only(left: 0, right: 15),
              child: Divider(
                height: 20,
                color: Colors.grey,
              ),
            );
          },
          itemCount:30), //条目数量
    );
  }
}
