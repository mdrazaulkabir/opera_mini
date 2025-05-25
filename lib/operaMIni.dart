import 'package:flutter/material.dart';
import 'package:opera_mini/UpdateSoon.dart';
import 'package:opera_mini/defalut/rowDefault.dart';
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
      backgroundColor: Colors.brown[100],
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
                  fillColor: Colors.white,
                  filled: true,
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

            SizedBox(
              height: 20,
            ),
            smallContainer(text: "facebook"),
            SizedBox(height: 20),
            //row
            Container(
                height: MediaQuery.of(context).size.height * .1,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowDefault(
                      onTap: () {

                      },
                      text1: "Save today",
                      text2: "7.2 MB",
                      icon: Icons.energy_savings_leaf_outlined,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: 2,
                      color: Colors.brown[100],
                    ),
                    rowDefault(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>updateSoon()));
                      },
                      text1: "Locked",
                      text2: "OFF",
                      icon: Icons.lock,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: 2,
                      color: Colors.brown[100],
                    ),
                    rowDefault(
                      onTap: () {
                        print("kabir");
                      },
                      text1: "Downloads",
                      text2: "Open",
                      icon: Icons.download,
                    ),
                  ],
                ))
            //column
            //big container
          ],
        ),
      ),
    );
  }
}
