
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki2/cardwidget.dart';



class Mostviewed extends StatefulWidget {
  static const String id ='mostviewed';

  @override
  _MostviewedState createState() => _MostviewedState();
}

class _MostviewedState extends State<Mostviewed> {
  final String image1='bg1';
  final String image2='bg2';
  double get randHeight => Random().nextInt(100).toDouble();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        leading:
        IconButton(
          icon:Image.asset( "images/mostviewed/dp.png"),
          onPressed: () {//Navigator.pushNamed(context,MyAccount.id);
          },
        ),
        title: Image.asset("images/mostviewed/logo_krooqi.png",height: 90,width: 70),centerTitle: true,
        actions: [Image.asset( "images/mostviewed/notify.png",height: 50,width: 25),],
        backgroundColor: Colors.orange[50],
        elevation: 0.0,
      ),

      body:ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          color: Colors.white,
          child:
          CustomScrollView(slivers: [

            SliverToBoxAdapter(
              child:

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:SizedBox
                      (width: 180,
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,

                        children:[
                          Image.asset('images/mostviewed/homeview.png', width: 54.0, height: 74.0),
                          Text("70",style: Theme.of(context).textTheme.headline1),

                          Text("Total views",style: Theme.of(context).textTheme.subtitle1),
                        ],),
                    ),),

                  Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:SizedBox
                      (width: 180,
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,

                        children:[
                          Image.asset('images/mostviewed/call.png', width: 54.0, height: 74.0),
                          Text("170",style: Theme.of(context).textTheme.headline1),

                          Text("Total contacts",style: Theme.of(context).textTheme.subtitle1),
                        ],),
                    ),),
                ],  ),
            ),

            SliverToBoxAdapter(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:SizedBox
                      (width: 180,
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,

                        children:[

                          Image.asset('images/mostviewed/house.png', width: 54.0, height: 74.0),
                          Text("70/75",style: Theme.of(context).textTheme.headline1),

                          Text("Published\nproperties",style: Theme.of(context).textTheme.subtitle1),
                        ],),),),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:SizedBox
                      (width: 180,
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,

                        children:[
                          Image.asset('images/mostviewed/investment.png', width: 54.0, height: 74.0),
                          Text("45%",style: Theme.of(context).textTheme.headline1),

                          Text("Avg listing rate",style: Theme.of(context).textTheme.subtitle1),
                        ],),),),

                ], ), ),
            SliverToBoxAdapter(
              child:
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.all(10),
                child:SizedBox
                  (
                  height: 150,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,

                    children:[
                      Image.asset('images/mostviewed/message.png', width: 54.0, height: 74.0),
                      Text("45%",style: Theme.of(context).textTheme.headline1),

                      Text("Avg listing rate",style: Theme.of(context).textTheme.subtitle1),
                    ],),
                ),
              ),
            ),

            SliverToBoxAdapter
              (
              child:Text('      Mostviewed properties',style: Theme.of(context).textTheme.headline1),
            ),

            SliverToBoxAdapter(
              child:
              CardWidget(image: image1),
            ),

            SliverToBoxAdapter(
              child:
              CardWidget( image: image2),
            ),




            SliverToBoxAdapter(
              child:

              Text("     Recent Enquires",style: Theme.of(context).textTheme.headline1),
            ),


            SliverToBoxAdapter(
              child:
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.all(15),
                child:
                Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 250, 0),
                      child:
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(6)),
                            color: Colors. orange[50]),

                        child:
                        Center(child:Text("Apartment",style: Theme.of(context).textTheme.headline4),
                        ),),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(1, 0, 170, 0),
                      child:
                      Text("Emirates skyline building",style: Theme.of(context).textTheme.headline2),),
                    Row(
                      children: [SizedBox(
                        width: 180,
                        height: 150,
                        child:
                        Row(
                          children:[
                            Image.asset('images/mostviewed/cust.png', width: 50.0, height: 70.0),
                            Column(

                              children:[
                                const SizedBox(
                                  height: 50,
                                ),
                                Text("customer",style: Theme.of(context).textTheme.headline2),

                                Text("Yazeed",style: Theme.of(context).textTheme.headline1),],),
                          ],),),
                        SizedBox(
                          width: 180,
                          height: 150,
                          child:
                          Row(
                            children:[
                              Image.asset('images/mostviewed/agent.png', width: 50.0, height: 70.0),
                              Column(

                                children:[
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Text("agent",style: Theme.of(context).textTheme.headline2),

                                  Text("Anwar",style: Theme.of(context).textTheme.headline1),
                                ],),

                            ],
                          ),),
                      ],
                    ),



                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(color: Colors. grey[100],
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0), ),
                      ),

                      child:
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Can you please share the location of the property",style: TextStyle(color: Colors.grey,fontSize:16,fontWeight: FontWeight.w400),),
                      ),
                    ),



                  ],
                ),),

            ),],),),),



      bottomNavigationBar:ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0), ),
        child:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors. orange[50],
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'HOME',
              icon: Image.asset('images/mostviewed/home.png',height: 20,width: 20),
            ),
            BottomNavigationBarItem(
              label: 'PACKAGE',
              icon: Image.asset('images/mostviewed/packages.png',height: 20,width: 20),
            ),
            BottomNavigationBarItem(

              icon: Image.asset('images/mostviewed/properties.png',height: 20,width: 20),
              label: 'PROPERTIES',
            ),

            BottomNavigationBarItem(
              label: 'ENQUIRES',
              icon: Image.asset('images/mostviewed/enquires.png',height: 20,width: 20),
            ),

            BottomNavigationBarItem(
              label: 'AGENT',
              icon: Image.asset('images/mostviewed/agents.png',height: 20,width: 20),
            ),

          ],
        ),),
    );

  }
}