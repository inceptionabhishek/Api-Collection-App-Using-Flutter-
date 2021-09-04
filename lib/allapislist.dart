import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:allapis/cateogrydata.dart';


class AllapisListData extends StatefulWidget {



  @override
  _AllapisListDataState createState() => _AllapisListDataState();
}

class _AllapisListDataState extends State<AllapisListData> {

  List <String> data=[
    "Animals",
    "Anime",
    "Anti-Malware",
    "Art & Design",
    "Authentication",
    "Books",
    "Business",
    "Calendar",
    "Cloud Storage & File Sharing",
    "Continuous Integration",
    "Cryptocurrency",
    "Currency Exchange",
    "Data Validation",
    "Development",
    "Dictionaries",
    "Documents & Productivity",
    "Environment",
    "Events",
    "Finance",
    "Food & Drink",
    "Games & Comics",
    "Geocoding",
    "Government",
    "Health",
    "Jobs",
    "Machine Learning",
    "Music",
    "News",
    "Open Data",
    "Open Source Projects",
    "Patent",
    "Personality",
    "Phone",
    "Photography",
    "Science & Math",
    "Security",
    "Shopping",
    "Social",
    "Sports & Fitness",
    "Test Data",
    "Text Analysis",
    "Tracking",
    "Transportation",
    "URL Shorteners",
    "Vehicle",
    "Video",
    "Weather"
  ];
  String imageurl="assets/images/";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text('List Of all Apis',style:TextStyle(
            fontFamily: 'Staatliches',
            color: Colors.white,
            letterSpacing: 3,
          )),
        ),
        body: Container(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 45,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.deepPurpleAccent[100],
                  child:
                      Column(
                        children: <Widget> [
                          Center(child:
                          Text(data[index],style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                              letterSpacing: 3.0,
                          ),)),
                          Image.asset(imageurl + '${index+1}'+'.png', height: 50,),
                          SizedBox(height: 20,),
                          AnimatedButton(
                            width: 100.0,
                            height: 50,
                            color: Colors.deepPurple,
                            child: Text(
                              'Get',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => cateogry(value :data[index]),
                              ));
                            },
                          )
                        ],
                      ),
                );
              }
          ))
        ),
    );
  }
}


