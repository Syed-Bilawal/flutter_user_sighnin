import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:my_test_app/image_screen.dart';
import 'package:my_test_app/main.dart';
import 'package:my_test_app/views/screens/person.dart';

import '../../controllers/home_controller.dart';
import '../../models/product.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({super.key, required this.email});
  final String email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  @override
   final b = Get.put(HomeController());
  Widget build(BuildContext context) {
   

    return Scaffold( 
      appBar: AppBar(centerTitle: true, title: Text('home screen'),
      actions: [
        IconButton(onPressed: () {
          Get.to(()=>  Person());
        }, icon: Icon(Icons.person))
      ],
      ),
      
      body: Column(   crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container
          ( child : Padding( 
            padding: const EdgeInsets.all(10),
            child: CarouselSlider( 
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 14/9,
                viewportFraction: 0.6,
                enlargeCenterPage: true,
                height: 130
              ),
              items:  b.myStore
            .map((i) => Container(
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    child: SizedBox(
                      // width: MediaQuery.of(context).size.width/1.4,
                      width: 500,
                      child: GestureDetector(child: Image.network(i.urlImage, fit: BoxFit.cover, height: 50,),
                      onTap: (){
                            Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TheDescriptionPage(i),
                              ),
                            );
                          }  ,
                      ))),
              ),
            ))
            .toList(),
            ),
          )
            
            
          
          ),
          SizedBox(height: 10,),
          Text('  Catogiries' , style: TextStyle(fontSize: 20 ,color: Colors.blueGrey, fontWeight: FontWeight.bold) , ),
          SizedBox(
            height: 100, width: 500,
            child: ListView.builder(scrollDirection: Axis.horizontal,
           itemCount:  b.myStore.length, itemBuilder: (context, i) { productItems myObject = b.myStore[i];
            return Container(
              padding: EdgeInsets.all(8),
              child:SizedBox( height: 90,
                child: Card(      
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),      
                         child: SizedBox(height: 90,
                           child: Column( 
                             children: [ 
                               ClipRRect(
                                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                 child: GestureDetector(child: Image.network(myObject.urlImage,
                                 fit: BoxFit.cover, width: 130, height: 55,  ),
                                 
                                 onTap: (){
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TheDescriptionPage(b.myStore[i]),
                            ),
                          );
                        }  ,
                                 )), 
                                 Padding(padding: EdgeInsets.all(2)),
                               Align(alignment: Alignment.topLeft,
                                child: Text(myObject.name)),
                               
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
           itemCount: b.myStore.length, itemBuilder: (context, i) {
             return Container( 
             padding: EdgeInsets.all(8),decoration: BoxDecoration(), 
              child: SizedBox( height: 100,width: 200, 
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column( 
                    children: [ 
                      ClipRRect(
                        borderRadius:  BorderRadius.only(topLeft: Radius.circular(15) ,
                         topRight: Radius.circular(15)  ),
                        child: GestureDetector(child: Image.network(b.myStore[i].urlImage, 
                        fit: BoxFit.cover, height: 110, width: 200,),
                        onTap: () {
                          Navigator.push<Widget>(context,
                           MaterialPageRoute(builder: (context) => TheDescriptionPage(b.myStore[i])));
                        },
                        )),
                         Align(alignment: Alignment.topLeft,
                          child: Text(b.myStore[i].name,)),
                         Align(alignment: Alignment.topLeft,
                          child: Text(b.myStore[i].price)),
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
