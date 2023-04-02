import 'package:flutter/material.dart';

import '../widgets/edit_profile.dart';
import '../widgets/highligt.dart';
import '../widgets/info_item.dart';
import '../widgets/item_post.dart';
import '../widgets/name_bio.dart';
import '../widgets/page_item.dart';
import '../widgets/profile_pic.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.lock_outline_rounded,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "ianmadiana",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                // AVATAR
                ProfilePic(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // POSTS contructor
                      InfoItem(title: "Posts", value: "4"),
                      // FOLLOWERS
                      InfoItem(title: "Followers", value: "26"),
                      // FOLLOWING
                      InfoItem(title: "Following", value: "44"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          // NAME & BIO
          NameBio(),
          SizedBox(height: 7),
          // Edit profile - Share Prof - Add icon
          EditProfile(),
          SizedBox(height: 20),

          // HIGHLIGHT
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // HIGHLIGHT
                HighLight(
                  titleH: 'Story 1',
                  picIndex: 67,
                ),
                HighLight(
                  titleH: 'Story 2',
                  picIndex: 28,
                ),
                HighLight(
                  titleH: 'Story 3',
                  picIndex: 98,
                ),
                HighLight(
                  titleH: 'Story 4',
                  picIndex: 55,
                ),
                HighLight(
                  titleH: 'Story 5',
                  picIndex: 43,
                ),
                HighLight(
                  titleH: 'Story 6',
                  picIndex: 24,
                ),
              ],
            ),
          ),
          // PAGE ITEM (GRIDVIEW & TAG)
          Row(
            children: [
              PageItem(active: true, IconData: Icon(Icons.grid_on_rounded)),
              PageItem(
                  active: false, IconData: Icon(Icons.person_pin_outlined)),
            ],
          ),
          // ITEM POSTS - GRIDVIEW BUILDER
          ItemPost()
        ],
      ),
    );
  }
}

