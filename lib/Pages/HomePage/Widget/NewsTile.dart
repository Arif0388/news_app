import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String tag;
  final String author;
  const NewsTile({super.key, required this.imageUrl, required this.title, required this.time, required this.tag, required this.author});
  @override
  Widget build(BuildContext context) {
    return  Row(
    children: [
    Container(
      margin:const EdgeInsets.only(bottom:15),
    padding:const EdgeInsets.all(5),
    width:370,
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
  const CircleAvatar(),
  const SizedBox(width:10,),
  Text(author),
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
  ],
  );
  }
}
