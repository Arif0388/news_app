import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Components/NewsTile.dart';
import 'package:news_app/Pages/Article/Widgets/newssearchButton.dart';
import 'package:news_app/Pages/NewsDetails/newsdetails.dart';

import '../../Controller/NewsController.dart';
import '../HomePage/Widget/NewsTile.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            const SearchButton(),
          const SizedBox(height:10),
       Obx(() => newsController.isTrendingLoading.value? const Column(children: [
         NewsTileCard(),
         NewsTileCard(),
         NewsTileCard(),
         NewsTileCard(),
         NewsTileCard(),
         NewsTileCard(),
         NewsTileCard(),
       ],)
           :
           Column(
         children: newsController.newsForYouList.map((e)=>
             Column(
               children: [
                 NewsTile(
                   onTap:(){
                     Get.to(NewsDetails(news:e));
                   },
                   imageUrl:e.urlToImage ?? 'https://www.jagranimages.com/images/newimg/17012025/17_01_2025-saif_ali_khan_attacked__1_23868531.webp',
                   author:e.author ?? 'unknown',
                   tag:'Trending no 3',
                   time:e.publishedAt ?? '',
                   title:e.title ?? '',
                 ),
               ],
             )

         ).toList(),
       ), ),
         ]
        ),
      ),
    );
  }
}
