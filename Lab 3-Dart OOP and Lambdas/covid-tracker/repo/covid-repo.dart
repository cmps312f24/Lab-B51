import 'dart:convert';
import 'dart:io';

import '../model/covid-stat.dart';

class CovidRepo {
  List<CovidStat> covidStats = [];

  int getTotalDeathAroundTheWold() {
    return covidStats.fold(0, (total, element) => total + element.totalDeaths);
  }

  CovidRepo.init() {
    var file = File('data/covid-data.json');

    //parse the file and change it to a Map

    String content = file.readAsStringSync();

    // print(content);

    // change the Map to covid-stat List
    List<dynamic> covidStatMap = jsonDecode(content);

    // print the covidStat object
    covidStats = covidStatMap.map((e) => CovidStat.fromJson(e)).toList();

    covidStats.forEach((element) {
      print(element.country);
    });
  }
}
