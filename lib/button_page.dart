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
                      borderRadius: BorderRadius.circular(18))),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 12)),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff009E60))),
              child: const Text(
                'text',
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
              'text',
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
              '上传附件',
              style: TextStyle(
                  fontSize: 14, color: Color(0xff000000),),
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
                children: [
                  Icon(
                    Icons.add,
                    color: Color(0xff000000),
                  ),
                  Text('text'
                  ,style: TextStyle(color: Color(0xff000000)),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
