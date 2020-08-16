import 'package:json_annotation/json_annotation.dart';

import 'countryInfo.dart';

part 'covidResultInfo.g.dart';

@JsonSerializable()
class COVIDResultInfo{
   String country;
   CountryInfo countryInfo;
   int cases;
   int todayCases;
   int deaths;
   int recovered;
   int active;
   int critical;
   int casesPerOneMillion;
   int deathsPerOneMillion;
   int updated;

    COVIDResultInfo(
      this.country,
      this.countryInfo,
      this.cases,
      this.todayCases,
      this.deaths,
      this.recovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.updated
    );

   factory COVIDResultInfo.fromJson(Map<String,dynamic> json) => _$COVIDResultInfoFromJson(json);
   Map<String, dynamic> toJson() => _$COVIDResultInfoToJson(this);

//    factory COVIDResultInfo.fromJson(Map<String, dynamic> jsonResult){
//        return COVIDResultInfo(
//
//          country: jsonResult["country"],
//          countryInfo: jsonResult['countryResult'],
//          cases: jsonResult["cases"],
//          todayCases: jsonResult["todayCases"],
//          deaths: jsonResult["deaths"],
//          recovered: jsonResult["recovered"],
//          active : jsonResult["active"],
//          critical: jsonResult["critical"],
//          casesPerOneMillion: jsonResult["casesPerOneMillion"],
//          deathsPerOneMillion: jsonResult["deathsPerOneMillion"],
//          updated: jsonResult["updated"]
//        );
//    }

}