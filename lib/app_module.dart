import 'package:flutter_modular/flutter_modular.dart';
import 'package:mastodon_flutter/pages/index_module.dart';
import 'package:mastodon_flutter/source/api_config.dart';
import 'package:mastodon_flutter/core/mastodon.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(APIConfig.new);
    i.addSingleton(Mastodon.new);
  }

  @override
  void routes(r) {
    r.module("/", module: IndexModule());
  }
}