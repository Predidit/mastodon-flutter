import 'package:flutter/material.dart';
import 'package:mastodon_flutter/core/mastodon.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Mastodon mastodonapi = Modular.get<Mastodon>();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(title: const Text('Mastodon Test Page')),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final response =
                await mastodonapi.mastodon.v1.statuses.createStatus(
              text: 'Toot!',
            );

            debugPrint(response.rateLimit.toString());
            debugPrint(response.data.toString());
          },
          child: const Text('测试'),
        ),
      ),
    );
  }
}