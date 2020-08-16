// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countrySummary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountrySummary _$CountrySummaryFromJson(Map<String, dynamic> json) {
  return CountrySummary(
    json['updated'] as int,
    json['cases'] as int,
    json['todayCases'] as int,
    json['deaths'] as int,
    json['todayDeaths'] as int,
    json['recovered'] as int,
    json['todayRecovered'] as int,
    json['active'] as int,
    json['critical'] as int,
    (json['casesPerOneMillion'] as num)?.toDouble(),
    (json['deathsPerOneMillion'] as num)?.toDouble(),
    json['tests'] as int,
    (json['testsPerOneMillion'] as num)?.toDouble(),
    json['population'] as int,
    json['oneCasePerPeople'] as int,
    json['oneDeathPerPeople'] as int,
    json['oneTestPerPeople'] as int,
    (json['activePerOneMillion'] as num)?.toDouble(),
    (json['criticalPerOneMillion'] as num)?.toDouble(),
    json['affectedCountries'] as int,
    json['continent'] as String,
    json['country'] as String,
    json['countryInfo'] == null
        ? null
        : CountryInfo.fromJson(json['countryInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CountrySummaryToJson(CountrySummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('updated', instance.updated);
  val['cases'] = instance.cases;
  val['todayCases'] = instance.todayCases;
  val['deaths'] = instance.deaths;
  val['todayDeaths'] = instance.todayDeaths;
  val['recovered'] = instance.recovered;
  val['todayRecovered'] = instance.todayRecovered;
  val['active'] = instance.active;
  val['critical'] = instance.critical;
  val['casesPerOneMillion'] = instance.casesPerOneMillion;
  val['deathsPerOneMillion'] = instance.deathsPerOneMillion;
  val['tests'] = instance.tests;
  val['testsPerOneMillion'] = instance.testsPerOneMillion;
  val['population'] = instance.population;
  val['oneCasePerPeople'] = instance.oneCasePerPeople;
  val['oneDeathPerPeople'] = instance.oneDeathPerPeople;
  val['oneTestPerPeople'] = instance.oneTestPerPeople;
  val['activePerOneMillion'] = instance.activePerOneMillion;
  val['criticalPerOneMillion'] = instance.criticalPerOneMillion;
  val['affectedCountries'] = instance.affectedCountries;
  val['continent'] = instance.continent;
  val['country'] = instance.country;
  val['countryInfo'] = instance.countryInfo?.toJson();
  return val;
}
