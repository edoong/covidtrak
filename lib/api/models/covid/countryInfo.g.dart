// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countryInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryInfo _$CountryInfoFromJson(Map<String, dynamic> json) {
  return CountryInfo(
    json['id'] as int,
    json['iso2'] as String,
    json['iso3'] as String,
    json['country'] as String,
    (json['lat'] as num)?.toDouble(),
    (json['long'] as num)?.toDouble(),
    json['flag'] as String,
  );
}

Map<String, dynamic> _$CountryInfoToJson(CountryInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso2': instance.iso2,
      'iso3': instance.iso3,
      'country': instance.country,
      'lat': instance.lat,
      'long': instance.long,
      'flag': instance.flag,
    };
