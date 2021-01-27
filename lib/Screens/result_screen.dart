import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:way/Screens/input_screen.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({this.data, this.starting, this.ending});
  final dynamic data;
  final String starting;
  final String ending;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final ScrollController controller = ScrollController();

  var path = List();
  var interchange = List();
  String time;
  var line = List();
  var startlines = List();

  dynamic dataInfo;
  String start;
  String end;

  int numOfStations;
  int numOfInterchange;

  String text;
  int flag = 0;
  int k = 0;
  var typeCurr;
  var typeNext;
  var typePrev;
  int col;
  int col1;
  int col2;

  String startline;

  @override
  Widget build(BuildContext context) {
    dataInfo = widget.data;
    start = widget.starting;
    end = widget.ending;

    time = dataInfo['time'].toString();
    line = dataInfo['line2'];
    startlines = dataInfo['line1'];
    startline = startlines[0];
    line.insert(0, startline);
    interchange = dataInfo['interchange'];
    path = dataInfo['path'];

    double timeInDouble = double.parse(time);
    int timeInInt = timeInDouble.toInt();

    numOfInterchange = interchange.length;
    numOfStations = path.length;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    '$start'.toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Colors.white),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Icon(
                                    FlutterIcons.arrow_right_faw,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text('$end'.toUpperCase(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          color: Colors.white),
                                      textAlign: TextAlign.left),
                                ),
                              ),
                            ],
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'Time: $timeInInt' + ' min',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            child: Text(
                                          'STATIONS: $numOfStations',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        )),
                                      ),
                                      Expanded(
                                        child: Container(
                                            child: Text(
                                          'INTERCHANGES: $numOfInterchange',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.cyan,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: ListView(
                      controller: controller,
                      children: List.generate(numOfStations, (int i) {
                        flag = 0;
                        typeCurr = line[k];
                        for (int j = 0; j < interchange.length; j++) {
                          if (interchange[j].toString() == path[i].toString()) {
                            text = path[i].toString().toUpperCase() +
                                ' interchange';
                            flag = 1;
                            k++;
                            typePrev = line[k - 1];
                            typeNext = line[k];
                            break;
                          }
                        }
                        if (typeCurr == 'red') {
                          col = 0xFFFF0000;
                        } else if (typeCurr == 'yellow') {
                          col = 0xFFFFFF00;
                        } else if (typeCurr == 'pink') {
                          col = 0xFFFFC0CB;
                        } else if (typeCurr == 'blue') {
                          col = 0xFF0000FF;
                        } else if (typeCurr == 'green') {
                          col = 0xFF008000;
                        } else if (typeCurr == 'violet') {
                          col = 0xFFEE82EE;
                        } else if (typeCurr == 'orange') {
                          col = 0xFFFFA500;
                        } else if (typeCurr == 'magenta') {
                          col = 0xFFFF00FF;
                        } else {
                          col = 0xFF808080;
                        }
                        if (typePrev == 'red') {
                          col1 = 0xFFFF0000;
                        } else if (typePrev == 'yellow') {
                          col1 = 0xFFFFFF00;
                        } else if (typePrev == 'pink') {
                          col1 = 0xFFFFC0CB;
                        } else if (typePrev == 'blue') {
                          col1 = 0xFF0000FF;
                        } else if (typePrev == 'green') {
                          col1 = 0xFF008000;
                        } else if (typePrev == 'violet') {
                          col1 = 0xFFEE82EE;
                        } else if (typePrev == 'orange') {
                          col1 = 0xFFFFA500;
                        } else if (typePrev == 'magenta') {
                          col1 = 0xFFFF00FF;
                        } else {
                          col1 = 0xFF808080;
                        }
                        if (typeNext == 'red') {
                          col2 = 0xFFFF0000;
                        } else if (typeNext == 'yellow') {
                          col2 = 0xFFFFFF00;
                        } else if (typeNext == 'pink') {
                          col2 = 0xFFFFC0CB;
                        } else if (typeNext == 'blue') {
                          col2 = 0xFF0000FF;
                        } else if (typeNext == 'green') {
                          col2 = 0xFF008000;
                        } else if (typeNext == 'violet') {
                          col2 = 0xFFEE82EE;
                        } else if (typeNext == 'orange') {
                          col2 = 0xFFFFA500;
                        } else if (typeNext == 'magenta') {
                          col2 = 0xFFFF00FF;
                        } else {
                          col2 = 0xFF808080;
                        }
                        return ListTile(
                          title: flag == 1
                              ? Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(
                                                Icons.radio_button_unchecked,
                                                color: Color(col1),
                                              ),
                                            )),
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              path[i].toString().toUpperCase(),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Text('INTERCHANGE',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13,
                                                    color: Color(col2))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Icon(
                                              Icons.radio_button_unchecked,
                                              color: Color(col),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              path[i].toString().toUpperCase(),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Text(''),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        );
                      }),
                    ),
                  ),
                  //color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new InputScreen()));
        },
        label: Text(
          'NEW TRAVEL',
          style: TextStyle(fontFamily: 'Poppins', fontSize: 11),
        ),
        //icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
