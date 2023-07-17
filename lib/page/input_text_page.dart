import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

import '../widget/verification_code_input.dart';

class InputTextPage extends StatelessWidget {
  const InputTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          children: [
            VerificationCodeInput(
              codeLength: 4,
              onCodeEntered: (code) {
                // 处理输入的验证码
                print('Entered code: $code');
              },
            ),
          ],
        ),
      ),
    );
  }

}
