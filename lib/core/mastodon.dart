import 'package:mastodon_api/mastodon_api.dart';
import 'package:mastodon_flutter/source/api_config.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Mastodon {
  late APIConfig apiConfig;
  late MastodonApi mastodon;

  Mastodon() {
    APIConfig apiConfig = Modular.get<APIConfig>();
    mastodon = MastodonApi(
      instance: apiConfig.mastondonInstance,
      bearerToken: apiConfig.breaveToken,
      retryConfig: RetryConfig(
        maxAttempts: 5,
        jitter: Jitter(
          minInSeconds: 2,
          maxInSeconds: 5,
        ),
        onExecute: (event) => print(
          'Retry after ${event.intervalInSeconds} seconds... '
          '[${event.retryCount} times]',
        ),
      ),
      timeout: const Duration(seconds: 10),
    );
  }
}
