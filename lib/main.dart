

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:allapis/allapislist.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('apislist'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Text('FREE API COLLECTION',
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Staatliches',
                color: Colors.grey[500],
              ),)
            ),
            SizedBox(height: 10.0,),
            Column(
              children:  [
                Row(
                  children: <Widget> [
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      child: Text(
                        'Animals',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      child: Text(
                        'Anime',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Anti-Malware',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Art & Design',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Books',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      child: Text(
                        'Business',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      child: Text(
                        'Cryptocurrency',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Dictionaries',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Food & Drink',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Government',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      child: Text(
                        'Science & Math',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      child: Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Shopping',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Sports & Fitness',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    AnimatedButton(
                      width: 50.0,
                      height: 30,
                      color: Colors.red,
                      child: Text(
                        'Test Data',
                        style: TextStyle(
                          fontSize: 5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 50,),
            AnimatedButton(
              width: 200.0,
              height: 100,
              color: Colors.purple,
              child: Text(
                'Explore Apis',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'Staatliches',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllapisListData()),
                );
              },
            ),
            SizedBox(height: 20,),

            CircleAvatar(
              backgroundImage: AssetImage('assets/images/loading.gif',),
              radius: 30.0,
            )
          ],
        ),
      ),
    );
  }
}


