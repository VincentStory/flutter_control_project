import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

import '../../config_router.dart';

class HomeGuidePage extends StatelessWidget {
  const HomeGuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: '目录'),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.button);
                },
                child: const Text('按钮'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.text);
                },
                child: const Text('文本'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.listview);
                },
                child: const Text('列表'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.row);
                },
                child: const Text('水平布局'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.column);
                },
                child: const Text('线性布局'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.stack);
                },
                child: const Text('帧布局'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.stack);
                },
                child: const Text('页面之间跳转并传递参数'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.custom_view);
                },
                child: const Text('自定义View'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.banner);
                },
                child: const Text('Banner'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.box_decoration);
                },
                child: const Text('BoxDecoration的用法'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.input_text);
                },
                child: const Text('验证码输入框'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.city_picker);
                },
                child: const Text('省市区选择器'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.tab_page);
                },
                child: const Text('tab list'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ConfigRouter.date_picker);
                },
                child: const Text('时间选择器'),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
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
