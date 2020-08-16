
import 'package:json_annotation/json_annotation.dart';
part 'countryInfo.g.dart';

@JsonSerializable()
class CountryInfo {

    int id;
    String iso2;
    String iso3;
    String country;
    double lat;
    double long;
    String flag;

    CountryInfo(
        this.id,
        this.iso2,
        this.iso3,
        this.country,
        this.lat,
        this.long,
        this.flag
    );
    factory CountryInfo.fromJson(Map<String,dynamic> json) => _$CountryInfoFromJson(json);
    Map<String, dynamic> toJson() => _$CountryInfoToJson(this);

//    factory CountryInfo.fromJson(Map<String,dynamic> jsonResult){
//        return CountryInfo(
//            id: jsonResult["_id"],
//            iso2: jsonResult["iso2"],
//            iso3: jsonResult["iso3"],
//            country: jsonResult["country"],
//            lat:  double.parse(jsonResult["lat"]),
//            long: double.parse(jsonResult["long"]),
//            flag: jsonResult["flag"]
//        );
//    }

}
