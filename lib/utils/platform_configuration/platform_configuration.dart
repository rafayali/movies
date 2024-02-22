import 'configuration_locator.dart'
    if (dart.library.html) 'web_configuration.dart'
    if (dart.library.io) 'io_configuration.dart';

abstract class PlatformConfiguration {
  void configure();

  factory PlatformConfiguration() => getPlatformConfiguration();
}
