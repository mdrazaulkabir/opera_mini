import 'package:flutter/material.dart';

class smallContainer extends StatelessWidget {
 // final Widget child;
  final String text;

  const smallContainer({super.key,
    // required this.child,
    required this.text});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: sizeHeight / 11,
          width: sizeWidth / 11,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 9, color: Colors.white)),
          child: Text('$sizeWidth'),
        ),
        Text(text,style: TextStyle(fontSize: sizeWidth/40),)
      ],
    );
  }
}
