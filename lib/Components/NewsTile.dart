import 'package:flutter/material.dart';

import '../Pages/Shimmer/shimmer.dart';

class NewsTileCard extends StatelessWidget {
  const NewsTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
      margin:const EdgeInsets.only(top:20),
      padding:const EdgeInsets.all(5),
      width:365,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        color:Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child:Row(
        children: [
          LoadingContainer(width:MediaQuery.of(context).size.width / 2.5, height:MediaQuery.of(context).size.height / 6),
          const SizedBox(width:10,),
          Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius:15,
                      backgroundColor:Colors.white,
                      child:LoadingContainer(width:MediaQuery.of(context).size.width / 2, height:MediaQuery.of(context).size.height / 0),
                    ),
                    const SizedBox(width:10,),
                    Expanded(child:LoadingContainer(width:MediaQuery.of(context).size.width / 1, height:10)),
                  ],
                ),
                const SizedBox(height:8),
                LoadingContainer(width:MediaQuery.of(context).size.width / 2, height:20),
                const SizedBox(height:15),
                LoadingContainer(width:MediaQuery.of(context).size.width / 4, height:10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
