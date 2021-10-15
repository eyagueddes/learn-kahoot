import 'package:flutter/material.dart';

class newsTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[200],
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Rechercher des Quiz'),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 160,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) => Container(
                        width: 320,
                        decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Index $index")),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:5.0,bottom: 15),
                  child: Container(
                    height: 90,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Culture générale',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[900])),

                      Text('Voir tout',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[600])),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
