import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpDigitsBox extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  const OtpDigitsBox({
    Key? key,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  @override
  State<OtpDigitsBox> createState() => _OtpDigitsBoxState();
}

class _OtpDigitsBoxState extends State<OtpDigitsBox> {
  List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextAdded);
    widget.focusNode.addListener(_onTextDeleted);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextAdded);
    widget.focusNode.removeListener(_onTextDeleted);
    super.dispose();
  }

  void _onTextAdded() {
    if (widget.controller.text.isNotEmpty) {
      FocusScope.of(context).nextFocus();
    }
  }

  void _onTextDeleted() {
    if (widget.controller.text.isEmpty) {
      final currentFocusIndex = focusNodes.indexOf(widget.focusNode);
      if (currentFocusIndex > 0) {
        focusNodes[currentFocusIndex - 1].requestFocus();
      }
    }
  }

  // void _onTextDeleted() {
  //   if (widget.controller.text.isEmpty) {
  //     FocusScope.of(context).previousFocus();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 74,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xFFFFC100),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.42),
      ),
      child: TextField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF1E232C),
          fontSize: 23.15,
          fontFamily: 'SpaceGrotesk',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
