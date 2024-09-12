import 'repo/covid-repo.dart';

void main(List<String> args) {
  CovidRepo covidRepo = CovidRepo.init();
  print(
      'The total number of death is ${covidRepo.getTotalDeathAroundTheWold()}');
}
