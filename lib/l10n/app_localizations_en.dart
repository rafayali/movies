// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String discoverPageTitle(String userName) {
    return 'Hello $userName';
  }

  @override
  String get guestUser => 'Guest User';

  @override
  String get discoverGuestUserDesc => 'Login to see your favorite movies and recommendations';

  @override
  String get discoverLoggedInUserDesc => 'Lets explore your favorite movies and tv shows';

  @override
  String get popularMoviesTitle => 'Popular Movies';

  @override
  String get tvShowsTitle => 'TV Shows';

  @override
  String get discoverTitle => 'Discover';

  @override
  String get loginDialogTitle => 'Login with TMDB';

  @override
  String get loginButtonText => 'Login';

  @override
  String get castTitle => 'Cast';

  @override
  String get errorLoadingMovies => 'Error loading movies, please try again.';

  @override
  String get retryButtonText => 'Retry';

  @override
  String get seeMoreButtonText => 'See More';

  @override
  String get noResults => 'No Results';

  @override
  String get searchPageSearchTextFieldHint => 'Search Movies, TvShows and People';

  @override
  String get searchPagePlaceholder => 'Search for your favorite movie, tvshow and cast';

  @override
  String get homeDiscoverTitle => 'Discover';

  @override
  String get homeSearchTitle => 'Search';
}
