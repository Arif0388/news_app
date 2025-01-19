import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/NavBottomController.dart';
class MyNavBottom extends StatelessWidget {
  const MyNavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController bottomNavController = Get.put(BottomNavController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Container(
            width:190,
            height:60,
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(25),
                color:Theme.of(context).colorScheme.primaryContainer
            ),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap:(){
                    bottomNavController.index.value = 0;
                  },
                  child: Obx(() =>  AnimatedContainer(
                    duration:const Duration(milliseconds:200),
                      curve:Curves.bounceInOut,
                      width:40,
                      height:40,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(25),
                        color:bottomNavController.index.value ==0 ? Colors.orange : null,
                      ),
                      child: const Icon(Icons.home,size:27,)
                  ),),
                ),
                InkWell(
                  onTap:(){
                    bottomNavController.index.value = 1;
                  },
                  child:Obx(() =>AnimatedContainer(
                      duration:const Duration(milliseconds:200),
                      curve:Curves.bounceInOut,
                      width:40,
                      height:40,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(25),
                        color:bottomNavController.index.value ==1 ? Colors.orange : null,
                      ),
                      child: const Icon(Icons.book,size:27,)
                  ),
                  )
                ),
                InkWell(
                  onTap:(){
                    bottomNavController.index.value = 2;
                  },
                  child: Obx(() => AnimatedContainer(
                      duration:const Duration(milliseconds:200),
                      curve:Curves.bounceInOut,
                      width:40,
                      height:40,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(25),
                        color:bottomNavController.index.value ==2 ? Colors.orange : null,
                      ),
                      child: const Icon(Icons.settings,size:27,)
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
