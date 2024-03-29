import 'package:flutter/material.dart';
import 'package:flutter_control_project/page/banner_page.dart';
import 'package:flutter_control_project/page/box_page.dart';
import 'package:flutter_control_project/page/button_page.dart';
import 'package:flutter_control_project/config_router.dart';
import 'package:flutter_control_project/page/circle_progress_page.dart';
import 'package:flutter_control_project/page/column_page.dart';
import 'package:flutter_control_project/page/custom_view_page.dart';
import 'package:flutter_control_project/page/home/home_guide_page.dart';
import 'package:flutter_control_project/page/input_text_page.dart';
import 'package:flutter_control_project/page/listview_page.dart';
import 'package:flutter_control_project/page/stack_page.dart';
import 'package:flutter_control_project/page/text_page.dart';

import 'page/city_picker_page.dart';
import 'page/date_picker_page.dart';
import 'page/my_tablist_page.dart';
import 'page/parent_widget.dart';
import 'page/row_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeGuidePage(),
      routes: {
        ConfigRouter.button: (context) => const ButtonPage(),
        ConfigRouter.text: (context) => const TextPage(),
        ConfigRouter.listview: (context) => const ListViewPage(),
        ConfigRouter.row: (context) => const RowPage(),
        ConfigRouter.column: (context) => const ColumnPage(),
        ConfigRouter.stack: (context) => const StackPage(),
        ConfigRouter.custom_view: (context) => const CustomPage(),
        ConfigRouter.banner: (context) => const BannerPage(),
        ConfigRouter.circle_progress: (context) => const CircleProgressPage(progress: 10),
        ConfigRouter.box_decoration: (context) => const BoxPage(),
        ConfigRouter.input_text: (context) => const InputTextPage(),
        ConfigRouter.city_picker: (context) => const CityPickerPage(),
        ConfigRouter.tab_page: (context) => MyDynamicTabListViewApp(),
        ConfigRouter.date_picker: (context) => MyParentWidget(),
      },
    );
  }
}
