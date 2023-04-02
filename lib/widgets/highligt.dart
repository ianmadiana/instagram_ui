import 'package:flutter/material.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    super.key,
    required this.titleH,
    required this.picIndex,
  });

  final String titleH;
  final int picIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // GRADIENT STATUS
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)),
              ),
              // PROFIC
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://picsum.photos/id/$picIndex/536/354"),
                      fit: BoxFit.cover),
                  color: Colors.grey,
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(90 / 2),
                ),
              ),
            ],
          ),
          Text(titleH),
        ],
      ),
    );
  }
}
