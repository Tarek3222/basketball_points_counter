import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.addPoint, required this.onPressed});

  final String addPoint;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              minimumSize: const Size(135, 53),
            ),
            onPressed: onPressed, 
            child:  Text(addPoint),
            );
  }
}