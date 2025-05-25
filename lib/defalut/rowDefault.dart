import 'package:flutter/material.dart';

class rowDefault extends StatefulWidget {
  final VoidCallback? onTap;
  final IconData icon;
   final String text1,text2;
  const rowDefault({ this.onTap,super.key,required this.icon,required this.text1,required this.text2});

  @override
  State<rowDefault> createState() => _rowDefaultState();
}

class _rowDefaultState extends State<rowDefault> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            widget.icon,
            color: Colors.green,
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.text1),
              Text(
                widget.text2,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.03),
              )
            ],
          )
        ],
      ),
    );
  }
}
