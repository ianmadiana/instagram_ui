import 'package:flutter/material.dart';

class ItemPost extends StatelessWidget {
  const ItemPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
      itemBuilder: (context, index) => Image.network(
        "https://picsum.photos/id/$index/536/354",
        fit: BoxFit.cover,
      ),
    );
  }
}
