import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              '字体加粗',
              textAlign: TextAlign.left, //靠左对齐
              style: TextStyle(
                fontSize: 22, //字体大小
                fontWeight: FontWeight.bold, //字体加粗
              ),
            ),
            const Text(
              '下划波浪线',
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 1,
              ),
            ),
            const Text(
              '中间删除线',
              style: TextStyle(
                  fontSize: 24,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.solid, //实心线
                  decorationColor: Colors.red),
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                ).createShader(Offset.zero & bounds.size);
              },
              child: const Text(
                '文字设置渐变色',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            _richText(),
          ],
        ),
      ),
    );
  }

  _richText() {
    return  RichText(
        strutStyle:
        const StrutStyle(forceStrutHeight: true, height: 0.5, leading: 0.7),
        text: TextSpan(
          text: "实现富文本",
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          children: [
            TextSpan(
                text: "蓝色字体",
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("------------点击 1");
                  }),
            TextSpan(
                text: "红色字体",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("------------点击 2");
                  }),
            const TextSpan(
              text: "黑色字体 ",
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            TextSpan(
                text: "黄色字体",
                style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("------------点击 3");
                  }),
          ],
        ),

    );
  }
}
