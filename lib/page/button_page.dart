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
          Center(
            child: ElevatedButton(
              onPressed: () {
                print('click Button');
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 2)),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff009E60))),
              child: const Text(
                '按钮',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          OutlinedButton(
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
          ),
          //实现文字加图片的效果
          OutlinedButton.icon(
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
          ),
          //另外一种方式实现图片加文字的效果
          Container(
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
              child: Row(
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
          ),

        ],
      ),
    );
  }
}
