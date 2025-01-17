import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String author;
  const TrendingCard({super.key,required this.imageUrl,required this.tag,required this.title,required this.author, required this.time});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin:const EdgeInsets.only(right:10),
      padding:const EdgeInsets.all(5),
      width:250,
      // height:300,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(15),
        color:Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child:Column(
        children: [
          Container(
            width:250,
            height:185,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(15),
              color:Theme.of(context).colorScheme.primaryContainer,
            ),
            child:ClipRRect(
                borderRadius:BorderRadius.circular(20),
                child: Image.network(imageUrl,fit:BoxFit.cover,),
            ),
          ),
          const SizedBox(height:5),
          Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text(tag,style:Theme.of(context).textTheme.bodyMedium),
                Text(time,style:Theme.of(context).textTheme.bodyMedium),
              ]),
          const SizedBox(height:5,),
          Row(
            children: [
              Flexible(
                  child: Text(title,maxLines:3,style:Theme.of(context).textTheme.bodyLarge))
            ],
          ),
          const SizedBox(height:5),
           Row(
            children: [
              const CircleAvatar(),
              const SizedBox(width:10,),
              Text(author),
            ],
          ),
        ],
      ),
    );
  }
}
