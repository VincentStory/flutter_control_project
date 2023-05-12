import 'package:flutter/material.dart';

import 'config_router.dart';

class HomeGuidePage extends StatelessWidget {
  const HomeGuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, ConfigRouter.button);
              },
              child: const Text('button'),
            ),
          ),
        ],
      ),
    );
  }
}
