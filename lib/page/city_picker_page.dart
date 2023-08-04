import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

import '../widget/app_bar.dart';

class CityPickerPage extends StatefulWidget {
  const CityPickerPage({Key? key}) : super(key: key);

  @override
  State<CityPickerPage> createState() => _CityPickerPageState();
}

class _CityPickerPageState extends State<CityPickerPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  print('click Button');
                  showPicker(context);
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
            ],
          ),
        ),
      ),
    );
  }

  showPicker(BuildContext context) async {
    Picker picker = Picker(
        adapter: PickerDataAdapter<String>(
            pickerData: JsonDecoder().convert(PickerData)),
        changeToFirst: false,
        textAlign: TextAlign.left,
        confirmTextStyle: TextStyle(
          color: Colors.black,
        ),
        cancelTextStyle: TextStyle(
          color: Colors.black,
        ),
        textStyle: TextStyle(
          color: Colors.black,
        ),
        selectedTextStyle: TextStyle(color: Colors.red),
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        });
    picker.showBottomSheet(context);
  }

  showPicker2(BuildContext context) {
    Picker picker = new Picker(
        adapter: PickerDataAdapter<String>(
            pickerData: new JsonDecoder().convert(PickerData)),
        changeToFirst: true,
        textAlign: TextAlign.left,
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        });
    picker.showBottomSheet(context);
  }
}

const PickerData = '''
[
    {
        "a": [
            {
                "a1": [
                    1,
                    2,
                    3,
                    4
                ]
            },
            {
                "a2": [
                    5,
                    6,
                    7,
                    8
                ]
            },
            {
                "a3": [
                    9,
                    10,
                    11,
                    12
                ]
            }
        ]
    },
    {
        "b": [
            {
                "b1": [
                    11,
                    22,
                    33,
                    44
                ]
            },
            {
                "b2": [
                    55,
                    66,
                    77,
                    88
                ]
            },
            {
                "b3": [
                    99,
                    1010,
                    1111,
                    1212
                ]
            }
        ]
    },
    {
        "c": [
            {
                "c1": [
                    "a",
                    "b",
                    "c"
                ]
            },
            {
                "c2": [
                    "aa",
                    "bb",
                    "cc"
                ]
            },
            {
                "c3": [
                    "aaa",
                    "bbb",
                    "ccc"
                ]
            }
        ]
    }
]
    ''';

const PickerData2 = '''
[
    [
        1,
        2,
        3,
        4
    ],
    [
        11,
        22,
        33,
        44
    ],
    [
        "aaa",
        "bbb",
        "ccc"
    ]
]
    ''';

// showPicker(BuildContext context) async {
//   Picker picker = Picker(
//       adapter: PickerDataAdapter<String>(
//           pickerData: JsonDecoder().convert(PickerData)),
//       changeToFirst: false,
//       textAlign: TextAlign.left,
//       textStyle: TextStyle(color: Colors.blue,),
//       selectedTextStyle: TextStyle(color: Colors.red),
//       columnPadding: const EdgeInsets.all(8.0),
//       onConfirm: (Picker picker, List value) {
//         print(value.toString());
//         print(picker.getSelectedValues());
//       });
//   picker.showBottomSheet(context);
// }

showPickerModal(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter<String>(
          pickerData: new JsonDecoder().convert(PickerData)),
      changeToFirst: true,
      hideHeader: false,
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.adapter.text);
      }).showModal(context); //_scaffoldKey.currentState);
}

// showPickerIcons(BuildContext context) {
//   new Picker(
//       adapter: PickerDataAdapter(data: [
//         new PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
//           new PickerItem(text: Icon(Icons.more)),
//           new PickerItem(text: Icon(Icons.aspect_ratio)),
//           new PickerItem(text: Icon(Icons.android)),
//           new PickerItem(text: Icon(Icons.menu)),
//         ]),
//         new PickerItem(text: Icon(Icons.title), value: Icons.title, children: [
//           new PickerItem(text: Icon(Icons.more_vert)),
//           new PickerItem(text: Icon(Icons.ac_unit)),
//           new PickerItem(text: Icon(Icons.access_alarm)),
//           new PickerItem(text: Icon(Icons.account_balance)),
//         ]),
//         new PickerItem(text: Icon(Icons.face), value: Icons.face, children: [
//           new PickerItem(text: Icon(Icons.add_circle_outline)),
//           new PickerItem(text: Icon(Icons.add_a_photo)),
//           new PickerItem(text: Icon(Icons.access_time)),
//           new PickerItem(text: Icon(Icons.adjust)),
//         ]),
//         new PickerItem(text: Icon(Icons.linear_scale), value: Icons.linear_scale, children: [
//           new PickerItem(text: Icon(Icons.assistant_photo)),
//           new PickerItem(text: Icon(Icons.account_balance)),
//           new PickerItem(text: Icon(Icons.airline_seat_legroom_extra)),
//           new PickerItem(text: Icon(Icons.airport_shuttle)),
//           new PickerItem(text: Icon(Icons.settings_bluetooth)),
//         ]),
//         new PickerItem(text: Icon(Icons.close), value: Icons.close),
//       ]),
//       title: new Text("Select Icon"),
//       onConfirm: (Picker picker, List value) {
//         print(value.toString());
//         print(picker.getSelectedValues());
//       }
//   ).show(_scaffoldKey.currentState);
// }

showPickerDialog(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter<String>(
          pickerData: new JsonDecoder().convert(PickerData)),
      hideHeader: true,
      title: new Text("Select Data"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).showDialog(context);
}

showPickerArray(BuildContext context) {
  new Picker(
      adapter: PickerDataAdapter<String>(
          pickerData: new JsonDecoder().convert(PickerData2), isArray: true),
      hideHeader: true,
      title: new Text("Please Select"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).showDialog(context);
}

showPickerNumber(BuildContext context) {
  new Picker(
      adapter: NumberPickerAdapter(data: [
        NumberPickerColumn(begin: 0, end: 999),
        NumberPickerColumn(begin: 100, end: 200),
      ]),
      delimiter: [
        PickerDelimiter(
            child: Container(
          width: 30.0,
          alignment: Alignment.center,
          child: Icon(Icons.more_vert),
        ))
      ],
      hideHeader: true,
      title: new Text("Please Select"),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }).showDialog(context);
}
