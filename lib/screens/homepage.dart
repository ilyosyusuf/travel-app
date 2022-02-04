

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage('https://source.unsplash.com/random'),
                        
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10.0,top: 10.0),
                              alignment: Alignment.centerLeft,
                              child: Text("It's your dream 👋",style: TextStyle(fontSize: 14.0, color: Colors.grey))
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.0),
                              alignment: Alignment.centerLeft,
                              child: Text("Lydia Danira", style: TextStyle(fontSize: 18.0),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      decoration:BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          shape: BoxShape.circle
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(Icons.search_outlined, color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              )
            ),
            
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Select a ride", style: TextStyle(fontSize: 25.0),),
                  Container(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Colors.orange,
                        ),
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Colors.orange.withOpacity(0.5),
                        ),
                        CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Colors.orange.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 180,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>Container(
                  margin: EdgeInsets.only(left: 20.0),
                  width: 180,
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 130,
                        decoration: BoxDecoration(
                        color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://source.unsplash.com/random/$index'))
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Name $index")),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Tour Packages", style: TextStyle(fontSize: 25.0),),
                Text("Explore"),
              ],),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
              
                (context, index)=>Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                        color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://source.unsplash.com/random/$index'))
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("City Name: $index", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Prices Starting From $index", style: TextStyle(color: Colors.grey),)),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("⭐️ Rates: $index",style: TextStyle(color: Colors.grey))),
                            ],
                          ),
                        )
                      )
                    ],
                  ),
                ),
                childCount: 10,
              )          
            ),
          )
        ],
      ),
    );
  }
}