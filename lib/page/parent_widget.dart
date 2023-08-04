import 'package:flutter/material.dart';


class MyChildWidget extends StatefulWidget {
  // Define a GlobalKey to access the child widget
  final GlobalKey<MyChildWidgetState> childKey;

  MyChildWidget({required this.childKey});



  @override
  MyChildWidgetState createState() => MyChildWidgetState();
}

class MyChildWidgetState extends State<MyChildWidget> {

  // Method that can be called from the parent widget
  void doSomething() {
    print('Child Widget: Doing something...');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Widget code here...
    );
  }
}

class MyParentWidget extends StatelessWidget {
  // Create a GlobalKey for the child widget
  final GlobalKey<MyChildWidgetState> childKey = GlobalKey<MyChildWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Call the child widget's method from the parent widget
              childKey.currentState?.doSomething();
            },
            child: Text('Call Child Method'),
          ),
          SizedBox(height: 20),
          MyChildWidget(childKey: childKey),
        ],
      ),
    );
  }


}
