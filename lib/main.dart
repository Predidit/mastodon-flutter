import 'package:flutter/material.dart';
import 'package:mastodon_flutter/app_module.dart';
import 'package:mastodon_flutter/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
