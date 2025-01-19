import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsModel.dart';
class NewsController extends GetxController
{
RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
RxList<NewsModel> apple5News = <NewsModel>[].obs;
RxList<NewsModel> teslaNewsList = <NewsModel>[].obs;
RxList<NewsModel> tesla5News = <NewsModel>[].obs;
RxList<NewsModel> businessNewsList = <NewsModel>[].obs;
RxList<NewsModel> business5News = <NewsModel>[].obs;

RxBool isTrendingLoading = false.obs;
RxBool isNewsForLoading = false.obs;
RxBool isAppleNewsLoading = false.obs;
RxBool isTeslaNewsLoading = false.obs;
RxBool isBusinessLoading = false.obs;

@override
void onInit() async{
    super.onInit();
  getTrendingNews();
  getNewsForYou();
  getAppleNews();
  getTeslaNews();
  getBusinessNews();
}

//   get news
Future<void> getTrendingNews()async{
  isTrendingLoading.value = true;
  try{
    var baseUrl = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0321e45667514b32bf13f530aa35b3b7';
    final response = await http.get(Uri.parse(baseUrl));
    if(response.statusCode == 200)
    {
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      for(var news in articles)
      {
        trendingNewsList.add(NewsModel.fromJson(news));
      }
    }
    else
      {
        print('Something Went Wrong');
      }
  }catch(e)
  {
    if (kDebugMode) {
      print(e);
      }
    }

isTrendingLoading.value = false;
}

  Future<void> getNewsForYou()async{
  isNewsForLoading.value = true;
    try{
      var baseUrl2 = 'https://newsapi.org/v2/everything?q=apple&from=2025-01-17&to=2025-01-17&sortBy=popularity&apiKey=0321e45667514b32bf13f530aa35b3b7';
      final response = await http.get(Uri.parse(baseUrl2));
      if(response.statusCode == 200)
      {
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for(var news in articles)
        {
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYou5.value = newsForYouList.sublist(5,11).obs;
      }
      else
      {
        print('Something Went Wrong');
      }
    }catch(e)
    {
      if (kDebugMode) {
        print(e);
      }
    }
  isNewsForLoading.value =false;
  }

  Future<void> getAppleNews()async{
  isAppleNewsLoading.value = true;
    try{
      var baseUrl2 = 'https://newsapi.org/v2/everything?q=apple&from=2025-01-18&to=2025-01-18&sortBy=popularity&apiKey=0321e45667514b32bf13f530aa35b3b7';
      final response = await http.get(Uri.parse(baseUrl2));
      if(response.statusCode == 200)
      {
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for(var news in articles)
        {
          appleNewsList.add(NewsModel.fromJson(news));
        }
        apple5News.value = appleNewsList.sublist(5,11).obs;
      }
      else
      {
        print('Something Went Wrong');
      }
    }catch(e)
    {
      if (kDebugMode) {
        print(e);
      }
    }
isAppleNewsLoading.value = false;
  }

  Future<void> getTeslaNews()async{
  isTeslaNewsLoading.value = true;
    try{
      var baseUrl2 = 'https://newsapi.org/v2/everything?q=tesla&from=2024-12-19&sortBy=publishedAt&apiKey=0321e45667514b32bf13f530aa35b3b7';
      final response = await http.get(Uri.parse(baseUrl2));
      if(response.statusCode == 200)
      {
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for(var news in articles)
        {
          teslaNewsList.add(NewsModel.fromJson(news));
        }
        tesla5News.value = teslaNewsList.sublist(0,5).obs;
      }
      else
      {
        print('Something Went Wrong');
      }
    }catch(e)
    {
      if (kDebugMode) {
        print(e);
      }
    }
isTeslaNewsLoading.value = false;
  }

  Future<void> getBusinessNews()async{
  isBusinessLoading.value = true;
    try{
      var baseUrl2 = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0321e45667514b32bf13f530aa35b3b7';
      final response = await http.get(Uri.parse(baseUrl2));
      if(response.statusCode == 200)
      {
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for(var news in articles)
        {
          businessNewsList.add(NewsModel.fromJson(news));
        }
        business5News.value = businessNewsList.sublist(5,9).obs;
      }
      else
      {
        print('Something Went Wrong');
      }
    }catch(e)
    {
      if (kDebugMode) {
        print(e);
      }
    }
isBusinessLoading.value = false;
  }

  Future<void> searchNews(String search)async{
    isTrendingLoading.value = true;
    try{
      var baseUrl = 'https://newsapi.org/v2/everything?q=$search&apiKey=0321e45667514b32bf13f530aa35b3b7';
      final response = await http.get(Uri.parse(baseUrl));
      if(response.statusCode == 200)
      {
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        newsForYouList.clear();
        int i = 0;
        for(var news in articles)
        {
         i++;
         newsForYouList.add(NewsModel.fromJson(news));
         if(i==10)
           {
             break;
           }
        }
      }
      else
      {
        print('Something Went Wrong');
      }
    }catch(e)
    {
      if (kDebugMode) {
        print(e);
      }
    }

    isTrendingLoading.value = false;
  }
}