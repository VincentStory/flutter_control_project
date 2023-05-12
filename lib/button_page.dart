import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
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
              shape: StadiumBorder(),
              side: BorderSide(color: Color(0xff009E60)),
            ),
            child: const Text(
              'text',
              style: TextStyle(
                color: Color(0xff009E60),
              ),
            ),
          ),
          // OutlinedButton(
          //   onPressed: () {
          //     print("copy");
          //   },
          //   style: OutlinedButton.styleFrom(
          //     shape: const StadiumBorder(),
          //     side: const BorderSide(color: Color(0xff009E60))),
          //   ),
          //   child: const Text(
          //     'Menyalin',
          //     style: TextStyle(
          //       color: ConfigColor.colorPrimary,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
