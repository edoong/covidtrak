// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covidResultInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

COVIDResultInfo _$COVIDResultInfoFromJson(Map<String, dynamic> json) {
  return COVIDResultInfo(
    json['country'] as String,
    json['countryInfo'] == null
        ? null
        : CountryInfo.fromJson(json['countryInfo'] as Map<String, dynamic>),
    json['cases'] as int,
    json['todayCases'] as int,
    json['deaths'] as int,
    json['recovered'] as int,
    json['active'] as int,
    json['critical'] as int,
    json['casesPerOneMillion'] as int,
    json['deathsPerOneMillion'] as int,
    json['updated'] as int,
  );
}

Map<String, dynamic> _$COVIDResultInfoToJson(COVIDResultInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'countryInfo': instance.countryInfo?.toJson(),
      'cases': instance.cases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
      'active': instance.active,
      'critical': instance.critical,
      'casesPerOneMillion': instance.casesPerOneMillion,
      'deathsPerOneMillion': instance.deathsPerOneMillion,
      'updated': instance.updated,
    };
