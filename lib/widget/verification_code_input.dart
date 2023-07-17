import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCodeInput extends StatefulWidget {
  final int codeLength;
  final Function(String) onCodeEntered;

  VerificationCodeInput(
      {required this.codeLength, required this.onCodeEntered});

  @override
  _VerificationCodeInputState createState() => _VerificationCodeInputState();
}

class _VerificationCodeInputState extends State<VerificationCodeInput> {
  late List<String> code;

  @override
  void initState() {
    super.initState();
    code = List.filled(widget.codeLength, '');
  }

  void updateCode(int index, String value) {
    setState(() {
      code[index] = value;

      if (index < code.length - 1 && value.isNotEmpty) {
        FocusScope.of(context).nextFocus();
      }

      if (index < code.length && index > 0 && value.isEmpty) {
        FocusScope.of(context).previousFocus();
      }

      if (code.every((element) => element.isNotEmpty)) {
        widget.onCodeEntered(code.join());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.codeLength,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: 48,
            child: TextField(
              showCursor: false,
              style: const TextStyle(color: Colors.green),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), // 仅允许输入数字
              ],
              maxLength: 1,
              textAlign: TextAlign.center,
              onChanged: (value) => updateCode(index, value),
              decoration: InputDecoration(
                counterText: '',
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
