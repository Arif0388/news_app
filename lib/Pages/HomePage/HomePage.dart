import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/NavBotttom.dart';
import 'package:news_app/Components/NewsTile.dart';
import 'package:news_app/Components/TrendingLoadingCard.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/HomePage/Widget/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widget/TrendingCard.dart';
import 'package:news_app/Pages/NewsDetails/newsdetails.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text('Hello News',style:Theme.of(context).textTheme.headlineSmall),
      ),
      // floatingActionButton:const MyNavBottom(),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Column(
            children: [
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: [
                      Text('Hottest News',style:Theme.of(context).textTheme.bodyLarge),
                 Text('See All',style:Theme.of(context).textTheme.labelMedium),
               ],
             ),
              const SizedBox(height:20),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Obx(() => newsController.isTrendingLoading.value ? const Row(
                  children: [
                    TrendingLoadingCard(),
                    TrendingLoadingCard(),
                  ],
                ) :  Row(
                  children: newsController.trendingNewsList.map((e)=>
                      TrendingCard(
                        onTap:(){
                          Get.to(NewsDetails(news:e,));
                        },
                        imageUrl:e.urlToImage ?? '',
                        author:e.author ?? "A",
                        tag:'Trending no 3',
                        time:e.publishedAt!,
                        title:e.title!,
                      ),
                  ).toList(),
                ),
                ),
              ),
            ),
              const SizedBox(height:20),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('News For you',style:Theme.of(context).textTheme.bodyLarge),
                  Text('See All',style:Theme.of(context).textTheme.labelMedium),
                ],
              ),
              const SizedBox(height:15),
              Obx(() => newsController.isNewsForLoading.value ? const Column(
                children: [
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                ],
              ) :  Column(
                children:newsController.newsForYou5.map((e)=>
                    NewsTile(
                      onTap:(){
                        Get.to(NewsDetails(news:e));
                      },
                      imageUrl:e.urlToImage ?? 'https://c.ndtvimg.com/2024-12/821h2dd8_amit-shah_625x300_18_December_24.jpg?im=FeatureCrop,algorithm=dnn,width=773,height=435',
                      author:e.author ?? 'Unknown',
                      tag:'Trending no 0',
                      time:e.publishedAt ?? 'Arif Hussain',
                      title:e.title ?? 'Hello',
                    ),
                ).toList(),
              )
              ),

              const SizedBox(height:15),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tesla News',style:Theme.of(context).textTheme.bodyLarge),
                  Text('See All',style:Theme.of(context).textTheme.labelMedium),
                ],
              ),
              const SizedBox(height:15),
              Obx(() => newsController.isTeslaNewsLoading.value ? const Column(
                children: [
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                ],
              ) :  Column(
                children:newsController.tesla5News.map((e)=>
                    NewsTile(
                      onTap:(){
                        Get.to(NewsDetails(news:e));
                      },
                      imageUrl:e.urlToImage ?? 'https://c.ndtvimg.com/2024-12/821h2dd8_amit-shah_625x300_18_December_24.jpg?im=FeatureCrop,algorithm=dnn,width=773,height=435',
                      author:e.author ?? '',
                      tag:'Trending no 0',
                      time:e.publishedAt ?? 'Arif Hussain',
                      title:e.title ?? 'Hello',
                    ),
                ).toList(),
              )
              ),

              const SizedBox(height:15),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Business News',style:Theme.of(context).textTheme.bodyLarge),
                  Text('See All',style:Theme.of(context).textTheme.labelMedium),
                ],
              ),
              const SizedBox(height:15),
              Obx(() => newsController.isBusinessLoading.value ?  const Column(
                children: [
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                ],
              ) :  Column(
                children:newsController.business5News.map((e)=>
                    NewsTile(
                      onTap:(){
                        Get.to(NewsDetails(news:e));
                      },
                      imageUrl:e.urlToImage ?? 'https://c.ndtvimg.com/2024-12/821h2dd8_amit-shah_625x300_18_December_24.jpg?im=FeatureCrop,algorithm=dnn,width=773,height=435',
                      author:e.author ?? '',
                      tag:'Trending no 0',
                      time:e.publishedAt ?? 'Arif Hussain',
                      title:e.title ?? 'Hello',
                    ),
                ).toList(),
              )
              ),

              const SizedBox(height:15),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Apple News',style:Theme.of(context).textTheme.bodyLarge),
                  Text('See All',style:Theme.of(context).textTheme.labelMedium),
                ],
              ),
              const SizedBox(height:10),
              Obx(() => newsController.isAppleNewsLoading.value ?const Column(
                children: [
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                  NewsTileCard(),
                ],
              ) :  Column(
                children:newsController.apple5News.map((e)=>
                    NewsTile(
                      onTap:(){
                        Get.to(NewsDetails(news:e));
                      },
                      imageUrl:e.urlToImage ?? 'https://c.ndtvimg.com/2024-12/821h2dd8_amit-shah_625x300_18_December_24.jpg?im=FeatureCrop,algorithm=dnn,width=773,height=435',
                      author:e.author ?? '',
                      tag:'Trending no 0',
                      time:e.publishedAt ?? 'Arif Hussain',
                      title:e.title ?? 'Hello',
                    ),
                ).toList(),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
