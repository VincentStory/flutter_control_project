import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

import '../config_router.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({Key? key}) : super(key: key);

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: '自定义view'),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ConfigRouter.button);
              },
              child: const Text('直线进度条'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ConfigRouter.circle_progress);
              },
              child: const Text('圆形进度条'),
            ),
          ],
        ),
      ),
    );
  }
}
