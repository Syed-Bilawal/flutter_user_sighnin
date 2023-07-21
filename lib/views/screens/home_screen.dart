import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:my_test_app/image_screen.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({super.key, required this.email});
  final String email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  @override
  final List<String> imgList = [
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHE_kmIrwX2FexOFGoE6dJ0k9TQL8u0qEh0g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfGYuWgWz8a4-A-K2rH-O_BgH1gFXCqiXhEQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgR8rh8Zq03zb54sEtvrZX8qeH-PTYZrZE2w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB0fPOJkjIUQ3Q8YJ1tGOZ5POsNyzRr8XHcg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEVTfLlJPIzVdchu91CaBSFaxlFuqR7vMgYw&usqp=CAU',
  
  ];
  Widget build(BuildContext context) {
   

    return Scaffold( 
      appBar: AppBar(centerTitle: true, title: Text('home screen'),),
      body: Column(   crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container
          ( child : CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 14/9,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              height: 130
            ),
            items:  imgList
          .map((item) => Container(
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width/1.4,
                    width: 800,
                    child: GestureDetector(child: Image.network(item, fit: BoxFit.cover, height: 50,),
                    onTap: (){
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(item),
                            ),
                          );
                        }  ,
                    ))),
            ),
          ))
          .toList(),
          )
            
            
          
          ),
          SizedBox(height: 10,),
          Text('  Catogiries' , style: TextStyle(fontSize: 20 ,color: Colors.blueGrey, fontWeight: FontWeight.bold) , ),
          SizedBox(
            height: 100, width: 500,
            child: ListView.builder(scrollDirection: Axis.horizontal,
           itemCount:  imgList.length, itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              child:SizedBox( height: 90,
                child: Card(      
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),      
                         child: SizedBox(height: 90,
                           child: Column( 
                             children: [ 
                               ClipRRect(
                                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                                 child: GestureDetector(child: Image.network(imgList[index],
                                 fit: BoxFit.cover, width: 130, height: 55,  ),
                                 onTap: (){
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(imgList[index]),
                            ),
                          );
                        }  ,
                                 )), 
                                 Padding(padding: EdgeInsets.all(2)),
                               Text('this is list view')
                             ],
                           ),
                         ),
                       ),
              ),          
            );
          },
          )),
          Text('  New Arival', style: TextStyle(color: Colors.blueGrey,fontSize: 20 , fontWeight: FontWeight.bold),),
          Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
           itemCount: imgList.length, itemBuilder: (context, index) {
             return Container( 
             padding: EdgeInsets.all(8),decoration: BoxDecoration(), 
              child: SizedBox( height: 100,width: 200, 
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column( 
                    children: [ 
                      ClipRRect(
                        borderRadius:  BorderRadius.only(topLeft: Radius.circular(20) ,
                         topRight: Radius.circular(20)  ),
                        child: GestureDetector(child: Image.network(imgList[index], 
                        fit: BoxFit.cover, height: 120, width: 200,),
                        onTap: () {
                          Navigator.push<Widget>(context, MaterialPageRoute(builder: (context) => ImageScreen(imgList[index])));
                        },
                        )),
                         Text('this is grid view ')
                    ],
                  ),
                ),
              )
              
             );
             
           },))
        ],
      )
      
      
    );
  
 
  }
}
