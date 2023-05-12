import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:percent_indicator/percent_indicator.dart';

class Photos extends StatefulWidget {
  static const String id ='photos';

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  double get randHeight => Random().nextInt(100).toDouble();



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          leading:
          Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: Text('property details'),
          actions: [ Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          ],

          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),

        body:
        Column
          (
          children:[
            PageView(

              children: <Widget>[
                Container(
                  height: 200,
                  width: 380,
                  child:
                  Image.asset('images/photos/bg1.png', height: 200, width: 340,
                    fit: BoxFit.cover,),
                ),


                Container(
                  height: 200,
                  width: 380,
                  child:

                  Image.asset('images/photos/bg1.png',height: 200,width: 340,
                    fit: BoxFit.cover,),
                ),

                Container(
                  height: 200,
                  width: 380,
                  child:

                  Image.asset('images/photos/map.png',height: 200,width: 340,
                    fit: BoxFit.cover,),


                ),
              ],

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Photos.id);
                  },
                  style:ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: const Size(130, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Row(
                    children: <Widget>[

                      Image.asset('images/photos/photos.png',height: 50,width: 30,),
                      Text("photos",style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, Videos.id);
                  },
                  style:ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: const Size(130, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Row(
                    children: <Widget>[

                      Image.asset('images/photos/video.png'),
                      Text("videos",style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, Mapview.id);
                  },
                  style:ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: const Size(130, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Row(
                    children: <Widget>[
                      Image.asset('images/photos/location.png'),
                      Text("mapview",style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),

              ],),

            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.directions_bike),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.directions_car,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        'Car',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        /*

    Column(
      children: const <Widget>[
      TabBar(
      tabs: [
      Tab(child: Text('basic info', style: TextStyle(color: Colors.black))),
      Tab(child: Text('more info', style: TextStyle(color: Colors.black))),
      Tab(child: Text('amenties', style: TextStyle(color: Colors.black))),
      Tab(child: Text('activities', style: TextStyle(color: Colors.black)))
      ],
      ),


      Expanded(
      child: TabBarView(
      children: [
      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset she"),
      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset she"),
      Text("Lorem Ipsum is simply dummy "),
      Text("Lorem Ipsum is simply dummy "),

      ],



      ),



      ),
      ],
      ),
     */

      ),

    );
  }
}


