import 'package:mastodon_flutter/pages/index.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mastodon_flutter/source/api_config.dart';

class IndexModule extends Module {

  @override
  void routes(r){
    r.child("/", child: (_) => const MyHomePage());
  }
}