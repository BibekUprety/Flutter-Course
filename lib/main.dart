import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Profile App',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile App"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Image.network("https://images.pexels.com/photos/358238/pexels-photo-358238.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",height: 300,width: 300,),
          ),
          SizedBox(height: 10,),
          Text("Name : Bibek Upreti",style:TextStyle( fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
          SizedBox(height: 5,),
          Text("Address : Kathmandu",style:TextStyle( fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
          Text("Email :bibekUpreti9813@gmail.com",style:TextStyle( fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
          SizedBox(height: 150,),
          Text("Developed By : Bibek Uprety",style:TextStyle( fontSize: 15,color: Colors.black)),


        ],
      ),
    ),
  ));
}
