import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'models/covid/countrySummary.dart';
import 'models/covid/covidSummary.dart';

class APIServiceCovid {
  static String urlRoot = "https://disease.sh/v3/covid-19";

  static Future<COVIDSummary> all() async {
    final response = await http.get(urlRoot + "/all");

    if (response.statusCode == 200) {
      return COVIDSummary.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to Load API");
    }
  }

  static List<CountrySummary> parseJSONArray(String responseBody) {
    final parsedData = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsedData
        .map<CountrySummary>((json) => CountrySummary.fromJson(json))
        .toList();
  }

  static Future<List<CountrySummary>> countries() async {
    final response = await http.get(urlRoot + "/countries");

    if (response.statusCode == 200) {
      return compute(parseJSONArray, response.body);

//      return CountrySummary.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to Load API");
    }
  }
}
