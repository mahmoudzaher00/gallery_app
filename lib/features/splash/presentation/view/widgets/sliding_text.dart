import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/resources/font_manager.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: slidingAnimation,
        child: Column(
          children: [
            Text('My Gallery App',
              textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontFamily: FontConstants.fontFamilySegoe
            ),),
          ],
        )
    );
  }
}
