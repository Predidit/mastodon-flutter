import 'package:mastodon_api/mastodon_api.dart';
import 'package:mastodon_flutter/source/api_config.dart';

class Mastodon {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_BEARER_TOKEN',
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
    timeout: const Duration(seconds:10),
  );
}