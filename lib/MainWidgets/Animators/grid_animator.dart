import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class GridAnimator extends StatefulWidget {
  final List<Widget> data;
  final int crossCount;

  const GridAnimator({Key key, this.data, this.crossCount}) : super(key: key);

  @override
  _GridAnimatorState createState() => _GridAnimatorState();
}

class _GridAnimatorState extends State<GridAnimator> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.count(
        crossAxisCount: widget.crossCount,
         shrinkWrap: true,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          widget.data.length,
          (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 375),
              columnCount: 4,
              child: ScaleAnimation(
                child: FadeInAnimation(child: widget.data[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
