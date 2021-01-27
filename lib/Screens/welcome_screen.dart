import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_screen.dart';
import 'setting_screen.dart';
import 'package:way/transitions/slide_transition_downup.dart';
import 'package:way/transitions/slide_transition_updown.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  SlideDownRoute(page: SettingScreen()));
                            },
                            child: Icon(
                              Icons.settings,
                              size: 32,
                              color: Colors.cyan,
                            )),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      child: Image.asset('images/metro.png'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'WAY',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 42,
                                  color: Colors.cyan),
                            ),
                            Text(
                              'Get the route information',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context, SlideUpRoute(page: InputScreen()));
                          },
                          color: Colors.cyan,
                          textColor: Colors.white,
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
