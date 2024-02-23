import "dart:convert";
import 'dart:io';
import 'package:mobx/mobx.dart';

part 'api_config.g.dart';

class APIConfig = APIConfigBase with _$APIConfig;

abstract class APIConfigBase with Store {
  @observable
  String mastondonInstance = '';

  @observable
  String breaveToken = '';

  APIConfigBase({
    required mastondonInstance,
    required breaveToken,
  });

  factory APIConfigBase.fromJson(Map<String, dynamic> json) {
    return APIConfig(
      mastondonInstance: json['mastondonInstance'],
      breaveToken: json['breaveToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mastondonInstance': mastondonInstance,
      'breaveToken': breaveToken,
    };
  }

  void init() {
    File file = File('config/api_config.json');
    String jsonString = file.readAsStringSync();
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    APIConfigBase api = APIConfigBase.fromJson(jsonData);
    mastondonInstance = api.mastondonInstance;
    breaveToken = api.breaveToken;
  }
  }
