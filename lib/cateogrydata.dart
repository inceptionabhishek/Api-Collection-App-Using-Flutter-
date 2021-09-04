import 'dart:convert';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flip_card/flip_card.dart';
import 'package:url_launcher/url_launcher.dart';


List apidata=[];
Map listresponse={};
int total_length=0;
int display=0;
class cateogry extends StatefulWidget {
  String value="";

  cateogry({ required this.value});
  @override
  _cateogryState createState() => _cateogryState(value);
}
_launchURL(urlString) async {
  String url = '$urlString';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _cateogryState extends State<cateogry> {

  Future apicall(query) async {
    http.Response response;
    response = await http.get(Uri.parse('https://api.publicapis.org/entries?category=$query'));
    if(response.statusCode==200){
      setState(() {
        listresponse=json.decode(response.body);
        display=1;
        apidata=listresponse['entries'];
        total_length=listresponse['count'];
      });
    }
  }

  String value="";
  _cateogryState(this.value);

  @override
  void initState() {
    apicall(value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(value),
          ),
          // ignore: unnecessary_null_comparison
          body: display==0
              ? Container(
              child: Image.asset('assets/images/loading.gif', fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,)
          )
              : Container(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemCount: total_length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.deepPurpleAccent[100],
                      child:
                      Column(
                        children: <Widget> [
                          Center(child:
                          Text(apidata[index]['API'],style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            letterSpacing: 3.0,
                          ),)),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              AnimatedButton(
                                width: 100.0,
                                height: 50,
                                color: Colors.deepPurple,
                                child: Text(
                                  'Open in Browser',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onPressed: () {_launchURL('${apidata[index]['Link']}');
                                },
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/${index+1}.png',),
                                radius: 30.0,
                              )
                            ],
                          ),

                          // ignore: unnecessary_null_comparison
                          SizedBox(height: 10.0,),
                           Center(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children:  <Widget> [
                                 Text('API NAME : ',style: TextStyle(
                                   fontSize: 10,
                                   letterSpacing: 3.0,
                                   backgroundColor: Colors.purple
                                 ),),
                                 Text('${apidata[index]['API']} ',style: TextStyle(
                                     fontSize: 20,
                                 ),),
                                 Text('Description : ',style: TextStyle(
                                     fontSize: 10,
                                     letterSpacing: 3.0,
                                     backgroundColor: Colors.purple
                                 ),),
                                 Text('${apidata[index]['Description']} ',style: TextStyle(
                                   fontSize: 10,

                                 ),),
                                 Text('Auth : ',style: TextStyle(
                                     fontSize: 10,
                                     letterSpacing: 3.0,
                                     backgroundColor: Colors.purple
                                 ),),
                                 Text('${apidata[index]['Auth']} ',style: TextStyle(
                                   fontSize: 20,
                                 ),),
                                 Text('HTTPS : ',style: TextStyle(
                                     fontSize: 10,
                                     letterSpacing: 3.0,
                                     backgroundColor: Colors.purple
                                 ),),
                                 Text('${apidata[index]['HTTPS']} ',style: TextStyle(
                                   fontSize: 20,
                                 ),),
                                 Text('Cors : ',style: TextStyle(
                                     fontSize: 10,
                                     letterSpacing: 3.0,
                                     backgroundColor: Colors.purple
                                 ),),
                                 Text('${apidata[index]['Cors']} ',style: TextStyle(
                                   fontSize: 20,
                                 ),),
                                 Text('Link : ',style: TextStyle(
                                     fontSize: 10,
                                     letterSpacing: 3.0,
                                     backgroundColor: Colors.purple
                                 ),),
                                 Text('${apidata[index]['Link']} ',style: TextStyle(
                                   fontSize: 10,
                                 ),),
                               ],
                             ),
                           )
                        ],
                      ),
                    );
                  }
              )),
        ),
      ),
    );
  }


}

