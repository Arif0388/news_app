import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String tag;
  final String author;
  final VoidCallback onTap;
  const NewsTile({super.key, required this.imageUrl, required this.title, required this.time, required this.tag, required this.author, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return  Row(
    children: [
    InkWell(
      onTap:onTap,
      child: Container(
        margin:const EdgeInsets.only(bottom:15,left:7),
      padding:const EdgeInsets.all(5),
      width:365,
      decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(20),
      color:Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child:Row(
      children: [
      Container(
      width:142,
      height:140,
      decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(15),
      color:Theme.of(context).colorScheme.primaryContainer,
      ),
        child:ClipRRect(
            borderRadius:BorderRadius.circular(15),
            child: Image.network(imageUrl,fit:BoxFit.cover,)),
      ),
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
          child:Text(author[0],style:Theme.of(context).textTheme.labelMedium),
        ),
        const SizedBox(width:10,),
        Expanded(child: Text(author ?? '')),
        ],
        ),
        const SizedBox(height:8),
        Text(title,maxLines:3,style:Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height:15),
        Text(time,style:Theme.of(context).textTheme.bodyMedium),
        ],
        ),
        ),
        ],
        ),

        ),
    ),
  ],
  );
  }
}
