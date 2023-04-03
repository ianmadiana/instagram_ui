import 'package:flutter/material.dart';

class NameBio extends StatelessWidget {
  const NameBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "John",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        SizedBox(height: 5),
        // BIO
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(
            text: TextSpan(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "#hashtag",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
