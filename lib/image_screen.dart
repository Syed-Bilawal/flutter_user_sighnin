// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:my_test_app/image_screen.dart';

// import 'models/product.dart';
// class ImageScreen extends StatefulWidget {
//   final String url;
//   ImageScreen(this.url);

//   @override
//   _MyImageScreen createState() => _MyImageScreen(url);
// }

// class _MyImageScreen extends State<ImageScreen> {
//   // final String url;
//   // _MyImageScreen(this.url);
//     final productItems store;
//   _MyImageScreen(this.store);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('ImageScreen'),
//         ),
        
//         body: Column( 
//           children: [ Align(alignment: Alignment.center,),
//             Image.network(store.urlImage, width: 500 ,),
//           ],
//         ));
//   }
// }
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
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(alignment: Alignment.center,),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 200,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  store.urlImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      store.name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(store.ourDescription.toString())
                ],
              ))
        ],
      ),
    );
  }
}