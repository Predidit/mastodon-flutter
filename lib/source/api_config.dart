import "dart:convert";
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'api_config.g.dart';

class APIConfig = APIConfigBase with _$APIConfig;

abstract class APIConfigBase with Store {
  @observable
  String mastondonInstance = '';

  @observable
  String breaveToken = '';

  // APIConfigBase({
  //   required mastondonInstance,
  //   required breaveToken,
  // });

  // factory APIConfigBase.fromJson(Map<String, dynamic> json) {
  //   return APIConfig(
  //     mastondonInstance: json['mastondonInstance'],
  //     breaveToken: json['breaveToken'],
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'mastondonInstance': mastondonInstance,
  //     'breaveToken': breaveToken,
  //   };
  // }

  void init() {
    //File file = File('/config/api_config.json');
    //String jsonString = await rootBundle.loadString('/config/apiconfig.json');
    //Map<String, dynamic> jsonData = jsonDecode(jsonString);
    //APIConfigBase api = APIConfigBase.fromJson(jsonData);
    // mastondonInstance = jsonData['mastondonInstance'];
    // breaveToken = jsonData['breaveToken'];
    mastondonInstance = "Ih8uhQfJDLGXi4zIvIAjb9XuZLJ7TAB8wpEvixcYKQk";
    breaveToken = "";
    debugPrint('读取API配置成功');
  }
}
