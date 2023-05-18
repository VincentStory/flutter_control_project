import 'package:flutter/material.dart';

import '../widget/app_bar.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        alignment: Alignment.center,
        children: const [
          Positioned(
            top: 50,
            left: 40,
            child: Text('text1'),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Text('text2'),
          ),
        ],
      ),
    );
  }
}
