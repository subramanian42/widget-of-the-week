import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tags/models/Detailsmodel.dart';

class DetailsProvider {
  //Future<List<Details>>
  Future<List<Details>> loadDetails() async {
    final data = await rootBundle.loadString('assets/details.json');

    final List<dynamic> mapjson = json.decode(data);
    final detailsList =
        mapjson.map((itemDetail) => Details.fromJSON(itemDetail)).toList();
    return detailsList;
  }
}

/*
WORKING DESERIALISATION
1)    Method 1
final detailsJSON =
        (mapjson as List).map((e) => e as Map<String, dynamic>).toList();
        
    final detailslist =
        detailsJSON.map((item) => Details.fromJSON(item)).toList();
    print(detailslist[0].age);    //listdetails[0].age


2) Method 2
    final detailslist =
        mapjson.map((itemDetail) => Details.fromJSON(itemDetail)).toList();
*/