import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({super.key, required this.email});
  final String email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  @override
  final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
  Widget build(BuildContext context) {
   

    return Scaffold( 
      appBar: AppBar(centerTitle: true, title: Text('home screen'),),
      body: Column(
        children: [
          Expanded(
            child: Container
            ( child : CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 0.5,
                enlargeCenterPage: true,
                
              ),
              items:  imgList
            .map((item) => Container(
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.contain, width: 400.0),
                       
                      ],
                    )),
              ),
            ))
            .toList(),
            )
              
              
            
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(scrollDirection: Axis.horizontal,
           itemCount:  imgList.length, itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              child:SizedBox( height: 500,
              child : 
              
                
                  
                     Column(
                       children: [
                         Image.network(imgList[index]), Text('this is list view')
                       ],
                     ) , width: 200,  ), 
                
              
            
            );
          },
          )),
          Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
           itemCount: imgList.length, itemBuilder: (context, index) {
             return Container( 
             padding: EdgeInsets.all(8),decoration: BoxDecoration(), 
              child: Container( 
                
                child: 
                Column(
                  children: [
                    Image.network(imgList[index], fit: BoxFit.cover,), Text('this is grid view ')
                  ],
                ))
              
             );
             
           },))
        ],
      )
      
      
    );
  
 
  }
}
