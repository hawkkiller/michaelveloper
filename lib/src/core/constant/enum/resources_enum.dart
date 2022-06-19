import 'package:michaeldeveloper/src/core/constant/misc/links.dart';
import 'package:michaeldeveloper/src/core/exception/router_error.dart';

/// {@template resources.enum}
///
/// {@endtemplate}
enum ResourcesEnum {
  /// github
  github(Links.github),

  /// linkedin
  linkedin(Links.linkedin),

  /// telegram
  telegram(Links.telegram);

  /// {@macro resources.enum}
  const ResourcesEnum(this.url);

  /// the url to the resource
  final String url;

  /// get enum value from the string
  static ResourcesEnum fromValue(String value) {
    switch (value) {
      case 'github':
        return ResourcesEnum.github;
      case 'linkedin':
        return ResourcesEnum.linkedin;
      case 'telegram':
        return ResourcesEnum.telegram;
      default:
        throw UnrecognizedResource();
    }
  }
}
