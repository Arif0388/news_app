import 'package:flutter/material.dart';
import 'package:news_app/Pages/HomePage/Widget/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widget/TrendingCard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text('Hello News',style:Theme.of(context).textTheme.headlineSmall),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              width:190,
              height:60,
           decoration:BoxDecoration(
             borderRadius:BorderRadius.circular(25),
             color:Theme.of(context).colorScheme.onPrimaryContainer
           ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width:40,
                    height:40,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(25),
                          color:Colors.orange
                 ),
                      child: const Icon(Icons.home,size:27,)
                  ),
                  Container(
                      width:40,
                      height:40,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(25),
                          // color:Colors.orange
                      ),
                      child: const Icon(Icons.book,size:27,)
                  ),
                  Container(
                      width:40,
                      height:40,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(25),
                          // color:Colors.orange
                      ),
                      child: const Icon(Icons.settings,size:27,)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
             const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child: Row(
                  children: [
                   TrendingCard(
                     imageUrl:'https://th-i.thgim.com/public/incoming/wa52ig/article69104287.ece/alternates/LANDSCAPE_355/IMG_Ashwini_Delhi_2_1_FHDRQE78.jpg',
                     author:'Arif',
                     tag:'Trending',
                     time:'1 Day ago',
                     title:'The Commission has been set up to revise salaries of central government employees and allowances of pensioners',
                   ),
                   TrendingCard(
                     imageUrl:'https://www.jagran.com/_next/image?url=https%3A%2F%2Fwww.jagranimages.com%2Fimages%2Fnewimg%2F17012025%2F17_01_2025-pay_commission_salary_pension__23868521.webp&w=1920&q=75',
                     author:'Sunil Kumar',
                     tag:'Trending',
                     time:'9 Min ago',
                     title:'8th Pay Commission: कितनी बढ़ेगी न्यूनतम सैलरी और पेंशन, ग्रेच्युटी पर क्या होगा असर?',
                   ),
                   TrendingCard(
                     imageUrl:'https://www.jagran.com/_next/image?url=https%3A%2F%2Fwww.jagranimages.com%2Fimages%2Fnewimg%2F17012025%2F17_01_2025-bihar_23868515.webp&w=1920&q=75',
                     author:'Piyush Pandey',
                     tag:'Trending no 3',
                     time:'An hours ago',
                     title:'Bihar Politics:प्रशांत किशोर मानसिक रूप से कमजोर, मंत्री मंगल पाण्डेय ने कहा- मैं ले जाऊंगा अस्पताल',
                   ),
                    SizedBox(height:10),
                  ],
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
              const SizedBox(height:20),
              const NewsTile(
                imageUrl:'https://www.jagranimages.com/images/newimg/17012025/17_01_2025-saif_ali_khan_attacked__1_23868531.webp',
                author:'Mukesh Pandey',
                tag:'Trending no 3',
                time:'5 Hours ago',
                title:'Saif Ali Khan Attack: जिस सोसाइटी में रहते हैं सैफ-करीना, वहां की सुरक्षा को लेकर उठ रहे हैं ऐसे सवाल',
              ),
              const NewsTile(
                imageUrl:'https://www.jagranimages.com/images/newimg/17012025/17_01_2025-kejriwal2_3_23868610.jpg',
                author:'Arif Hussain',
                tag:'Trending no 3',
                time:'1 Hours ago',
                title:'आयुष्मान भारत योजना देश का सबसे बड़ा घोटाला, सुप्रीम कोर्ट ने भी की पुष्टि,केंद्र पर केजरीवाल ने साधा निशाना',
              ),
              const NewsTile(
                imageUrl:'https://www.jagranimages.com/images/newimg/17012025/17_01_2025-rahul_gandhi_3_23868578.jpg',
                author:'Mukesh Pandey',
                tag:'Trending no 3',
                time:'3 Hours ago',
                title:'अचानक हुई हलचल, पता चला राहुल गांधी आए हैं..., मरीजों ने बताया- कांग्रेस नेता से कैसी थी मुलाकात',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
