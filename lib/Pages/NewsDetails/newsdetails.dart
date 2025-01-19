import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Model/NewsModel.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.news});

  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical:40,horizontal:20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
               children: [
                 InkWell(
                     onTap:(){
                       Get.back();
                     },
                     child: const Icon(Icons.arrow_back)),
                 const SizedBox(width:5),
                 InkWell(
                     onTap:(){
                       Get.back();
                     },
                     child: const Text('Back',style:TextStyle(fontSize:18,color:Colors.white,))),
               ],
             ),
              const SizedBox(height:20),
              Container(
                height:350,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color:Theme.of(context).colorScheme.primaryContainer
                ),
                child:ClipRRect(
                    borderRadius:BorderRadius.circular(20),
                    child: Image.network(fit:BoxFit.cover,news.urlToImage ?? '')
                ),
              ),
              const SizedBox(height:15),
               Text(news.title ?? '',style: const TextStyle(
                fontSize:20,color:Colors.white),),
              const SizedBox(height:15),
              Row(
                children: [
                  Text(news.publishedAt ?? '',style:Theme.of(context).textTheme.labelMedium),
                ],
              ),
              const SizedBox(height:10),
              Row(
                children: [
                  CircleAvatar(
                    child:ClipRRect(
                        borderRadius:BorderRadius.circular(15),
                        child:Text(news.author![0]) ,
                    ),
                  ),
                  const SizedBox(width:10),
                  Expanded(child: Text(news.author ?? '',style:Theme.of(context).textTheme.labelLarge)),
                ],
              ),
              const SizedBox(height:15),
               Text(news.description ?? '',style:const TextStyle(fontSize:20,color:Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
