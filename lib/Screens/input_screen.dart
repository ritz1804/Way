import 'package:flutter/material.dart';
import 'package:way/Screens/loading_screen.dart';
import 'package:way/Screens/welcome_screen.dart';
import 'package:way/Services/data.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  DataModel weather = DataModel();

  String starting;
  String ending;

  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new WelcomeScreen()));
                                  },
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                'ROUTE',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 32,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                      color: Colors.cyan,
                    )),
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Starting Station',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 26,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Poppins'),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Enter Starting Station',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                onChanged: (from) {
                                  starting = from;
                                },
                              ),
                            ),
                          ],
                        ),
                        //color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ending Station',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 26,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Poppins'),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Enter Ending Station',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                onChanged: (to) {
                                  ending = to;
                                },
                              ),
                            ),
                          ],
                        ),
                        //color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoadingScreen(
                                starting: starting,
                                ending: ending,
                              );
                            }));
                          },
                          color: Colors.cyan,
                          textColor: Colors.white,
                          child: Text(
                            "SEARCH",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 26,
                            ),
                          ),
                        ),
                        //color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
