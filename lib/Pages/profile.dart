import 'package:flutter/material.dart';
import '../Widgets/profile_picture.dart';
import '../Widgets/info_item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "mdutchand",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black)
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined, color: Colors.black)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black)),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              ProfilePicture(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoItem("Posts", "69"),
                    InfoItem("Followers", "69"),
                    InfoItem("Following", "69"),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Chandra",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(
            text: TextSpan(
                text:
                    "It's fact that a reader will be distracted by the readable content of a page when looking the layout",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "#hashtag", style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ]),
    );
  }
}
