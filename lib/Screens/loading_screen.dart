import 'package:flutter/material.dart';
import 'result_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:way/Services/data.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({this.starting, this.ending});

  final String starting;
  final String ending;

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  String start;
  String end;

  @override
  void initState() {
    super.initState();
    getStationData();
  }

  void getStationData() async {
    start = widget.starting;
    end = widget.ending;
    var casesData = await DataModel().getStations(start, end);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ResultScreen(
        data: casesData,
        starting: start,
        ending: end,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Center(
              child: SpinKitFadingFour(
                color: Colors.white,
                size: 100.0,
              ),
            ),
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
