import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:movies_flutter/utils/platform_configuration/platform_configuration.dart';

class WebConfiguration implements PlatformConfiguration {
  @override
  void configure() {
    usePathUrlStrategy();
  }
}

PlatformConfiguration getPlatformConfiguration() => WebConfiguration();
