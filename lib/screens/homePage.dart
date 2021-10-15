import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kahoot/screens/news.dart';

import 'game_acces.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.grey,
              textDirection: TextDirection.ltr,
            ),
            tooltip: 'profile',
            onPressed: () {},
          ),
        ],
        title: Center(
          child: Text('Kahoot !',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 29,
                  fontFamily: 'carattere',
                  fontWeight: FontWeight.bold)),
        ),
        elevation: 5.0,
      ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4,top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.image_search_outlined,color: Colors.grey[700],),
                        SizedBox(width: 5),
                        Text('Découvrir',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[700])),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.43,
                        ),

                        Text('Voir tout',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[700])),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) => Container(
                        width: 280,
                        decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Index $index")),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 15, 0, 10),
                    child: Row(
                     children: <Widget>[ Text('Premium Pattern',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[700])),
                ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
                        width: 200,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Index $index")),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 15, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.account_circle_outlined,color: Colors.grey[700],),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Mes Quiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[700])),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.42
                        ),
                        Text('Voir tout',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[700])),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.245,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
                        width: 160,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Index $index")),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
