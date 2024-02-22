import 'package:movies_flutter/utils/platform_configuration/platform_configuration.dart';

class IoConfiguration implements PlatformConfiguration {
  @override
  void configure() {
    // no op
  }
}

PlatformConfiguration getPlatformConfiguration() => IoConfiguration();
