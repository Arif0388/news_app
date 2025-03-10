

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({super.key, required this.width, required this.height});
final double width;
final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:Theme.of(context).colorScheme.primaryContainer,
      highlightColor: Theme.of(context).colorScheme.onPrimaryContainer,
      child:Container(
        width:width,
        height:height,
        decoration:BoxDecoration(
          color:Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius:BorderRadius.circular(15),
        ),
      ),
    );
  }
}
