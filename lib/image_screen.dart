import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'models/product.dart';
class TheDescriptionPage extends StatelessWidget {
  final productItems store;
  TheDescriptionPage(this.store);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Discription Page'),),
      body: 
       SafeArea(
         child: Column(
          
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              margin: EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Container( alignment: Alignment.center,
                  child: ClipRRect( 
                    borderRadius: BorderRadius.circular(20),
                    
                    child: Card (
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Image.network(store.urlImage,fit: BoxFit.cover, height: 1000)),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 20),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Center(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text( 
                          store.name,
                          style: TextStyle(fontSize: 35,),
                        ),
                      
                      ),
                      
                    ),
                    Container(
                      child:
                      Text(store.price),
                         ),
                    Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 25, fontFamily: "Ganos" , 
                         fontWeight: FontWeight.bold
                      ),
                    ),
                    
                    Text(store.ourDescription.toString(), textAlign: TextAlign.justify , 
                    style: TextStyle(fontFamily: "Ganos", fontSize: 20),)
                  ],
                )
                ),
               
          ], 
          
             
             
             ),
       ),
    bottomNavigationBar: Container(
      height: 50,
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2,
            child:OutlinedButton(onPressed: () {
              
            }, child: Text('Add to card')) ),
            Expanded(
              flex: 1,
              child: ElevatedButton(onPressed: () {
                
              }, child: Text('Buy Now')
              )
              )
        
        ],
      ),
    ),
    );
  }
}
