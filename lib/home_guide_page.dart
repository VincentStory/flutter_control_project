import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

import 'config_router.dart';

class HomeGuidePage extends StatelessWidget {
  const HomeGuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: '目录'),
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, ConfigRouter.button);
              },
              child: const Text('按钮'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _lineView(),
        ],
      ),
    );
  }

  _lineView() {
    return Container(
      height: 0.5,
      color: Color(0xff000000),
    );
  }
}
