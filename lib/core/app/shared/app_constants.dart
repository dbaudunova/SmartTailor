abstract class Constants {
  static const baseUrl = "https://neobis-back-neotour-d00d4638f0fd.herokuapp.com";
  static const tours = "/api/tours/";
  static const reviews = "/api/reviews/tour/";
  static const booking = "/api/bookings/book-tour";
  static const List<String> titles = [
    'Popular',
    'Featured',
    'Most Visited',
    'Europe',
    'Asia',
  ];
  static List<String> iconPaths = [
    'icons/flags/png100px/kg.png',
    'icons/flags/png100px/kz.png',
    'icons/flags/png100px/ru.png',
    'icons/flags/png100px/es.png',
    'icons/flags/png100px/it.png',
    'icons/flags/png100px/eu.png',
  ];
}
