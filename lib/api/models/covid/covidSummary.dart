import 'package:json_annotation/json_annotation.dart';

part 'covidSummary.g.dart';

@JsonSerializable()
class COVIDSummary {
  @JsonKey(includeIfNull: false)
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  double casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  double activePerOneMillion;
  double criticalPerOneMillion;
  int affectedCountries;

  COVIDSummary(
    this.updated,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.population,
    this.oneCasePerPeople,
    this.oneDeathPerPeople,
    this.oneTestPerPeople,
    this.activePerOneMillion,
    this.criticalPerOneMillion,
    this.affectedCountries
  );

  factory COVIDSummary.fromJson(Map<String,dynamic> json) => _$COVIDSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$COVIDSummaryToJson(this);
  
//  factory COVIDSummary.fromJson(Map<String,dynamic> jsonResult){
//    return COVIDSummary(
//        updated:      jsonResult["updated"],
//        cases:        jsonResult["cases"],
//        todayCases:   jsonResult["todayCases"],
//        deaths:       jsonResult["deaths"],
//        todayDeaths:  jsonResult["todayDeaths"],
//        recovered:    jsonResult["recovered"],

//        todayRecovered: jsonResult["todayRecovered"],
//        active:       jsonResult["active"],
//        critical:     jsonResult["critical"],
//        casesPerOneMillion: double.parse(jsonResult["casesPerOneMillion"]),
//        deathsPerOneMillion: double.parse(jsonResult["deathsPerOneMillion"]),
//        tests:        jsonResult["tests"],
//        testsPerOneMillion: double.parse(jsonResult["testsPerOneMillion"]),
//      population: jsonResult["population"],
//      oneCasePerPeople: jsonResult["oneCasePerPeople"],
//      oneDeathPerPeople: jsonResult["oneDeathPerPeople"],
//      oneTestPerPeople: jsonResult["oneTestPerPeople"],
//      activePerOneMillion: double.parse(jsonResult["activePerOneMillion"]),
//      criticalPerOneMillion: double.parse(jsonResult["criticalPerOneMillion"]),
//      affectedCountries: jsonResult["affectedCountries"]
//    );
//  }

}