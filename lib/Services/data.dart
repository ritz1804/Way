import 'networking.dart';

const stationsURL = 'https://delhimetroapi.herokuapp.com/metroapi/';

class DataModel {

  Future<dynamic> getStations(String start, String end) async {
    NetworkHelper networkHelper = NetworkHelper('$stationsURL' + 'from=' + '$start' + '&' + 'to=' + '$end');

    var stationData = await networkHelper.getData();
    //print(stationData);
    return stationData;
  }
}
