import 'package:flutter/material.dart';
class samllContainer extends StatelessWidget {
  const samllContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeight=MediaQuery.of(context).size.height;
    double sizeWidth=MediaQuery.of(context).size.width;
    return Container(
      height: sizeHeight*.2,width: sizeWidth*.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 15,color: Colors.white)
      ),
    );
  }
}
