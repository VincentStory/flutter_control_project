import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';
import 'dart:math' as math;

class BoxPage extends StatelessWidget {
  const BoxPage({Key? key}) : super(key: key);

  //BoxDecoration的属性介绍
  //
  // color 设置背景颜色
  // shape 设置形状
  // border 设置边框
  // borderRadius 设置边框的圆角半径
  // boxShadow 设置阴影
  // gradient 设置渐变色背景

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    // 划线位置、线宽、颜色
                    bottom: BorderSide(width: 2.0, color: Colors.blue),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.text_decrease_sharp), Text('我是下划线')],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  border: Border(
                    // 划线位置、线宽、颜色
                    bottom: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                ),
                child: const Text('我是一个Item，我自带分隔线'),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 36,
                width: 150,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  //背景颜色
                  color: Colors.blue,
                  //圆角半径
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                child:
                    const Text('我是圆角背景', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 36,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //圆角半径
                  borderRadius: const BorderRadius.all(Radius.circular(18.0)),
                  //边框线宽、颜色
                  border: Border.all(width: 1.0, color: Colors.blue),
                ),
                child:
                    const Text('我是圆角线框', style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
                child:
                    const Text('我是圆形背景', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue)),
                child:
                    const Text('我是圆形线框', style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  // 阴影的颜色，模糊半径
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 6)],
                ),
                child: const Text('我是阴影', style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // 线性渐变，分别设置渐变的颜色，起始点
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.blue]),
                ),
                child:
                    const Text('线性渐变', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              // import 'dart:math' as math;
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                    center: FractionalOffset.center,
                    startAngle: 0.0,
                    endAngle: math.pi * 2,
                    colors: <Color>[
                      Colors.red,
                      Colors.yellow,
                      Colors.blue,
                      Colors.green,
                      Colors.red,
                    ],
                    stops: <double>[0, 0.25, 0.5, 0.75, 1],
                  ),
                ),
                child:
                    const Text('弧形渐变', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // 扩散性渐变，通过调整 radius 、stops 来查看不同的效果
                  gradient: RadialGradient(
                    radius: 0.6,
                    colors: <Color>[Colors.red, Colors.blue],
                    stops: <double>[0.2, 0.9],
                  ),
                ),
                child:
                    const Text('扩散性渐变', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
