import 'package:covidtracker_zigzag/api/models/covid/covidSummary.dart';
import 'package:json_annotation/json_annotation.dart';

import 'countryInfo.dart';

part 'countrySummary.g.dart';

@JsonSerializable()
class CountrySummary extends COVIDSummary {
  final String continent;
  final String country;
  final CountryInfo countryInfo;

  CountrySummary(
      int updated,
      int cases,
      int todayCases,
      int deaths,
      int todayDeaths,
      int recovered,
      int todayRecovered,
      int active,
      int critical,
      double casesPerOneMillion,
      double deathsPerOneMillion,
      int tests,
      double testsPerOneMillion,
      int population,
      int oneCasePerPeople,
      int oneDeathPerPeople,
      int oneTestPerPeople,
      double activePerOneMillion,
      double criticalPerOneMillion,
      int affectedCountries,
      this.continent,
      this.country,
      this.countryInfo)
      : super(
            updated,
            cases,
            todayCases,
            deaths,
            todayDeaths,
            recovered,
            todayRecovered,
            active,
            critical,
            casesPerOneMillion,
            deathsPerOneMillion,
            tests,
            testsPerOneMillion,
            population,
            oneCasePerPeople,
            oneDeathPerPeople,
            oneTestPerPeople,
            activePerOneMillion,
            criticalPerOneMillion,
            affectedCountries);

  factory CountrySummary.fromJson(Map<String, dynamic> json) =>
      _$CountrySummaryFromJson(json);
  Map<String, dynamic> toJson() => _$CountrySummaryToJson(this);
}
