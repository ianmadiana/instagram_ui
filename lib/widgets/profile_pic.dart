import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // GRADIENT STATUS
        Container(
          height: 95,
          width: 95,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red,
                    Colors.orange,
                  ]),
              borderRadius: BorderRadius.circular(50)),
        ),
        // PROFIC
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/237/536/354"),
                fit: BoxFit.cover),
            color: Colors.grey,
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(90 / 2),
          ),
        ),
      ],
    );
  }
}
