import 'package:flutter/material.dart';

import '../constantes.dart';

class gameAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kahoot !',
                        style: TextStyle(
                            fontSize: 90,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'carattere'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(8),
                            color: Colors.white70
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical:8),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.https_outlined),
                                border: OutlineInputBorder(),
                                hintText: 'Le code PIN du jeu ',
                              ),
                            ),
                          ),


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          color:button_COLOR  ,
                          height: 60,
                          onPressed: () {
                            //  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                          },
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text("Valider", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:Colors.white,
                          ),),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
