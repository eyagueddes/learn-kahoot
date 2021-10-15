

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
class add_Quiz extends StatefulWidget {
  @override
  _add_QuizState createState() => _add_QuizState();
}

class _add_QuizState extends State<add_Quiz> {
  TextEditingController sampledata1=new TextEditingController();
  TextEditingController sampledata2=new TextEditingController();
  var file;
  var imageUrl;
  final _storage= FirebaseStorage.instance;
  //check permission

  openGallary(BuildContext context)async{


  await Permission.photos.request();
  var permissionStatus=await Permission.photos.status;
    if(permissionStatus.isGranted) {
     File image = await (ImagePicker().pickImage(source: ImageSource.gallery)) as File,
      file = File(image.path);
      if (image != null) {
        var snapshot = await _storage.ref()
            .child('ImgCouverture/Quiz')
            .putFile(file);

        var downloadUrl = snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('no path reveived');
      }
    }
    else{
      print('Grant permission and try again');
    }
    }

  openCamera(BuildContext context)async{
    await Permission.photos.request();
    var permissionStatus=await Permission.photos.status;
      if(permissionStatus.isGranted){
        File image = ( await ImagePicker().pickImage(source: ImageSource.camera)) as File;
       file=File(image.path);
      }
      }

  Future <void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("choisir une photo"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Galerie'),
                onTap: (){
                  openGallary(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text('Camera'),
                onTap: (){
                  openCamera(context);
                },
              ),

            ],
          ),
        ),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(onPressed: (){},child: Text('Annuler')),
            Text('Créer un Quiz',style:TextStyle(color: Colors.black),),
            MaterialButton(onPressed: (){},child: Text('Enregister')),
          ],

        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image_sharp,size: 32,color: Colors.grey),
                        Center(
                          child: TextFormField(
                            controller: sampledata1,
                            onTap: (){
                              _showChoiceDialog(context);
                            },
                            decoration: InputDecoration(
                             hintText: "Appuie pour ajouter une image de couverture",
                             hintStyle: TextStyle(fontSize: 15))
                           ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

                  Padding(
                    padding: const EdgeInsets.only(left :15.0,bottom: 5),
                    child: Row(
                      children: [
                        Text('Titre',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.7,
                      color:Colors.grey[300],
                      child: TextFormField(
                        controller: sampledata2,
                        decoration: InputDecoration(
                          hintText: 'Saisir un Titre'
                        ),),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: circleButtonStyle,
                    onPressed: () {
                      Map <String,dynamic> data={"field1":sampledata1.text,"field2":sampledata2.text};
                      FirebaseFirestore.instance.collection("creation").add(data);
                    },
                    child: Icon(Icons.settings),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text('Questions',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      Map<String, dynamic> data = {"field1":sampledata1.text,"field":sampledata2.text};
                      FirebaseFirestore.instance.collection("creation").add(data);
                    },
                    child: Text('Ajouter une Question'),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.grey[700],
    minimumSize: Size(100, 56),
    elevation: 4,
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  final ButtonStyle circleButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black45,
    primary: Colors.grey[200],
    minimumSize: Size(55, 55),
    elevation: 4,
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(90)),

    ),
  );


}
