import 'package:flutter/material.dart';
import 'package:hotel_app/models/global.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.yellowAccent,
        home: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              body: Stack(
                children:[ TabBarView(
                  children: [
                    Container(
                      color: darkGreyColor,
                    ),
                    Container(
                      color: Colors.white,
                    ),
                    Container(
                      color: Colors.brown,
                    ),

                  ],
                ),
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hotel", style: hotelTitleStyle,),
                        Container()
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(top: 120, left: MediaQuery.of(context).size.width*0.5 - 40),
                    child: FloatingActionButton(
                      child: Icon(Icons.add, size: 60,),
                      backgroundColor: lightBlueColor,
                      onPressed: (){},
                    ),
                  )
                ]
              ),
              appBar: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.rss_feed),),
                  Tab(icon: Icon(Icons.perm_identity),),
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blueGrey,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ),
    );
  }
}
