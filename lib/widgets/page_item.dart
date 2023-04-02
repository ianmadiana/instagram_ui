import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  const PageItem({
    super.key,
    this.active = false,
    this.IconData,
  });

  final bool active;
  final IconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom:
                BorderSide(color: active == true ? Colors.black : Colors.white),
          ),
        ),
        child: IconButton(
          onPressed: () {},
          icon: IconData,
        ),
      ),
    );
  }
}
