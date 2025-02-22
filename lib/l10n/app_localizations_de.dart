// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String discoverPageTitle(String userName) {
    return 'Hallo $userName';
  }

  @override
  String get guestUser => 'Gastbenutzer';

  @override
  String get discoverGuestUserDesc => 'Melden Sie sich an, um Ihre Lieblingsfilme und Empfehlungen zu sehen';

  @override
  String get discoverLoggedInUserDesc => 'Entdecken Sie Ihre Lieblingsfilme und -fernsehsendungen';

  @override
  String get popularMoviesTitle => 'Beliebte Filme';

  @override
  String get tvShowsTitle => 'Fernsehshows';

  @override
  String get discoverTitle => 'Entdecken';

  @override
  String get loginDialogTitle => 'Melden Sie sich mit TMDB an';

  @override
  String get loginButtonText => 'Anmeldung';

  @override
  String get castTitle => 'Besetzung';

  @override
  String get errorLoadingMovies => 'Beim Laden der Filme ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get retryButtonText => 'Retry';

  @override
  String get seeMoreButtonText => 'Mehr sehen';

  @override
  String get noResults => 'Keine Ergebnisse';

  @override
  String get searchPageSearchTextFieldHint => 'Suchen Sie nach Filmen, Fernsehsendungen und Personen';

  @override
  String get searchPagePlaceholder => 'Suchen Sie nach Ihrem Lieblingsfilm, Ihrer Lieblingsserie und Ihrer Lieblingsbesetzung';

  @override
  String get homeDiscoverTitle => 'Entdecken';

  @override
  String get homeSearchTitle => 'Suchen';
}
