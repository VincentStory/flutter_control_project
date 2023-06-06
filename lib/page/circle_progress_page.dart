import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

import '../widget/circle_percent_progress.dart';

class CircleProgressPage extends StatefulWidget {
  final double progress;

  const CircleProgressPage({Key? key, required this.progress})
      : super(key: key);

  @override
  _CircleProgressPageState createState() => _CircleProgressPageState();
}

class _CircleProgressPageState extends State<CircleProgressPage> {
  double progress = 0.0;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(milliseconds: 100), (t) {
      if (progress > 1.0) {
        t.cancel();
        // ToastUtils.showToast('progress end');
        print('progress end');
      } else {
        setState(() {
          progress += 0.01;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: '圆形进度条'),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              child: CirclePercentProgress(
                progress: progress,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [Colors.red, Colors.green],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

