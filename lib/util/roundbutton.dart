// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icn;
  final Function onPsd;
  RoundButton({
    Key? key,
    required this.icn,
    required this.onPsd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPsd(),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icn,
        color: Colors.white,
      ),
    );
  }
}
