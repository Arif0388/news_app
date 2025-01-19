import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Controller/NewsController.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    TextEditingController searchController = TextEditingController();
    return    Container(
      margin:const EdgeInsets.symmetric(vertical:30),
      width:360,
      height:50,
      decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          // color:Theme.of(context).colorScheme.primaryContainer
      ),
      child:Row(
        children: [
          Expanded(
            child: TextFormField(
              controller:searchController,
              decoration:InputDecoration(
                  hintText: 'Search News . . . . .',
                  fillColor:Colors.deepOrangeAccent,
                  // fillColor:Theme.of(context).colorScheme.primaryContainer,
                  hintStyle:Theme.of(context).textTheme.labelLarge
              ),
            ),
          ),
          const SizedBox(width:10,),
          Obx(() =>
          newsController.isTrendingLoading.value ?
          Container(
            padding:const EdgeInsets.all(10),
            width:50,
            height:50,
            decoration:BoxDecoration(borderRadius:BorderRadius.circular(12), color:Colors.deepOrangeAccent
            ),
            child:const CircularProgressIndicator(
            ),
          )
              : InkWell(
            onTap:(){
              newsController.searchNews(searchController.text);
            },
            child: Container(
              width:50,
              height:50,
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(12),
                  color:Colors.deepOrangeAccent
              ),
              child:const Icon(Icons.search),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
