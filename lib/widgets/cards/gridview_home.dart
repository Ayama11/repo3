import 'package:flutter/material.dart';

class GridViewhome extends StatelessWidget {
  const GridViewhome({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 200,
    required this.crossAxisCount,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          //childAspectRatio: 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 15,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
