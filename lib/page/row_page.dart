
import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Row(
        //mainAxisAlignment 主轴对齐方式
        // mainAxisAlignment: MainAxisAlignment.start  靠左对齐
        // mainAxisAlignment: MainAxisAlignment.end    靠右对齐
        // mainAxisAlignment: MainAxisAlignment.center   居中对齐
        // mainAxisAlignment: MainAxisAlignment.spaceBetween  平均分配空间

        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        //元素与空白互相间隔
        children: [
          Expanded(
            flex: 1,//设置权重
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: const [
                Text(
                  "企业生产状态:",
                  style: TextStyle(color: Colors.black26),
                ),
                Text(
                  "正常",
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,//设置权重
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    "行业:",
                    style: TextStyle(color: Colors.black26),
                  ),
                  Expanded(//解决Text文本过长超出屏幕错误
                    child: Text(
                      'text',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                      TextStyle(color: Colors.black87),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
