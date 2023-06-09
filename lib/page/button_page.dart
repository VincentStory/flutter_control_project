import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Button样式'),
      body: Column(
        children: [
          _button1(),
          _button2(),
          //实现文字加图片的效果
          _button3(),
          //另外一种方式实现图片加文字的效果
          _button4(),
          //实现渐变颜色按钮
          _button5(),
        ],
      ),
    );
  }

  _button1() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print('click Button');
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 2)),
            backgroundColor:
                MaterialStateProperty.all(const Color(0xff009E60))),
        child: const Text(
          '按钮',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  _button2() {
    return OutlinedButton(
      onPressed: () {
        print("click Button");
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        side: BorderSide(color: Color(0xff009E60)),
      ),
      child: const Text(
        '按钮',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Color(0xff009E60),
        ),
      ),
    );
  }

  _button3() {
    return OutlinedButton.icon(
      icon: const Icon(
        Icons.add,
        color: Color(0xff000000),
      ),
      onPressed: () {
        print("click Button");
      },
      label: const Text(
        '按钮',
        style: TextStyle(
          fontSize: 14,
          color: Color(0xff000000),
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: const BorderSide(
          width: 1,
          color: Color(0xff000000),
        ),
      ),
    );
  }

  _button4() {
    return Container(
      width: 100,
      child: OutlinedButton(
        onPressed: () {
          print("click Button");
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: BorderSide(color: Color(0xff009E60)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Color(0xff000000),
            ),
            Text(
              '按钮',
              style: TextStyle(color: Color(0xff000000)),
            ),
          ],
        ),
      ),
    );
  }

  _button5() {
    return InkWell(
      onTap: () {
        print("click Button");
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                colors: [Color(0xffFFEBBF), Color(0xffEDD195)])),
        child: const Text('渐变色'),
      ),
    );
  }
}
