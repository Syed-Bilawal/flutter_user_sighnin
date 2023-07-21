import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_test_app/image_screen.dart';
class ImageScreen extends StatefulWidget {
  final String url;
  ImageScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<ImageScreen> {
  final String url;
  _MyImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ImageScreen'),
        ),
        
        body: Column( 
          children: [ Align(alignment: Alignment.center,),
            Image.network(url, width: 500 ,),
          ],
        ));
  }
}

