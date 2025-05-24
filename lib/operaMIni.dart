import 'package:flutter/material.dart';
import 'package:opera_mini/defalut/small_container.dart';

class opera extends StatefulWidget {
  const opera({super.key});

  @override
  State<opera> createState() => _operaState();
}

class _operaState extends State<opera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("This is for operamini"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //row: serach bar // also we can use here one textFiled
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [],
            // ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(
                    Icons.g_mobiledata_outlined,
                    size: 43,
                    color: Colors.redAccent,
                  ),
                  hintText: 'Search or enter address',
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings_voice_rounded))),
            ),

            //gridView some container

            SizedBox( height: 20,),
            smallContainer(text: "facebook"),
            //row
            //column
            //big container
          ],
        ),
      ),
    );
  }
}
