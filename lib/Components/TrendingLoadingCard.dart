import 'package:flutter/material.dart';

import '../Pages/Shimmer/shimmer.dart';

class TrendingLoadingCard extends StatelessWidget {
  const TrendingLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin:const EdgeInsets.only(right:10),
      padding:const EdgeInsets.all(5),
      width:250,
      height:310,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(15),
        color:Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child:Column(
        children: [
          const LoadingContainer(width:250, height:200),
          const SizedBox(height:12),
          Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                LoadingContainer(width:MediaQuery.of(context).size.width / 3, height:10),
                LoadingContainer(width:MediaQuery.of(context).size.width / 8, height:10),
              ]),
          const SizedBox(height:11,),
          Row(
            children: [
              Flexible(
                child: LoadingContainer(width:MediaQuery.of(context).size.width / 1, height:10),
              )
            ],
          ),
          const SizedBox(height:12),
          Row(
            children: [
              CircleAvatar(
                radius:15,
                backgroundColor:Colors.white,
                child:LoadingContainer(width:MediaQuery.of(context).size.width / 9, height:MediaQuery.of(context).size.height / 0),
              ),
              const SizedBox(width:10,),
              Expanded(
                child:LoadingContainer(width:MediaQuery.of(context).size.width / 3, height:10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
