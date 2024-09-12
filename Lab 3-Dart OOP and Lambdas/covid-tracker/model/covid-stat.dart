class CovidStat {
  String country;
  String continent;
  String region;
  int totalCases;
  int totalDeaths;
  int activeCases;
  int criticalCases;

  CovidStat(
      {required this.country,
      required this.continent,
      required this.region,
      required this.totalCases,
      required this.totalDeaths,
      required this.activeCases,
      required this.criticalCases});

  // factory method
  factory CovidStat.fromJson(Map<String, dynamic> json) {
    return CovidStat(
      country: json['country'],
      continent: json['continent'],
      region: json['region'],
      totalCases: json['totalCases'],
      totalDeaths: json['totalDeaths'],
      activeCases: json['activeCases'],
      criticalCases: json['criticalCases'],
    );
  }
}
