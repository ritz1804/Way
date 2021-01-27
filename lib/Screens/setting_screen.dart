import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isChecked = false;
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //about app
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 28,
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
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Text(
                              'Way is a metro navigation app that helps you get to your destination. It has a user frindly interface for user convenience',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 23,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        //color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                //  color: Colors.red,
              ),
            ),
            //dark mode
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: Text(
                            'Dark Mode',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          child: Center(
                            child: CustomSwitchButton(
                              backgroundColor: Colors.grey,
                              unCheckedColor: Colors.white,
                              animationDuration: Duration(milliseconds: 400),
                              checkedColor: Colors.white,
                              checked: isChecked,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // color: Colors.yellow,
              ),
            ),
            //helpline
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: Text(
                            'Helpline No',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: GestureDetector(
                                  onTap: () => launch("tel://155370"),
                                  child: Text(
                                    '155370',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: () => launch("tel://155370"),
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.green[800],
                                    ),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // color: Colors.red,
              ),
            ),
            //version
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: Text(
                            'Version',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            '1.0.0',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //color: Colors.red,
              ),
            ),
            //bug
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(''),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
                //color: Colors.pink,
              ),
            ),
            //developer and bug reporting
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            'Developed by',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            'Ritesh Nehru',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                color: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
