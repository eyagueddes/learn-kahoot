import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return Scaffold(
      appBar:AppBar (
        backgroundColor: Colors.grey[200],
        title: Center(
          child: Text('Bibliothèque',style: TextStyle(color: Colors.black,),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.library_books_outlined ,size:36,color: Colors.grey[500]),),
                        SizedBox(height: 20),
                        Text('Bibliothèque')
                      ],
                    ),
                    SizedBox(width:50),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.analytics_outlined,size:36,color: Colors.grey[500]),),
                        SizedBox(height: 20),
                        Text('Rapport')
                      ],

                    )
                  ],
                ),

              ),

              Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              DropdownButton(
                              elevation: 8,
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("First Item"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Second Item"),
                                    value: 2,
                                  )
                                ],
                                hint:Text("Select item")
                                ),
                              SizedBox(width: 20,),
                              DropdownButton(
                              elevation: 8,
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text("First Item"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Second Item"),
                                  value: 2,
                                )
                              ],

                              hint:Text("Select item")
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                                'joue des Quiz puis reviens ici pour voir votre résultat.Amuse-toi!',style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );

  }
}
