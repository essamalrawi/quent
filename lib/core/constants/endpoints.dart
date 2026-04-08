class Endpoints {
  static const String baseUrl = "https://qent.azurewebsites.net/api/";

  // Auth
  static const String login = "auth/login/";
  static const String register = "auth/register/";
  static const String getCountries = "public/countries/?page_size=245";
  static const String getLocations = "public/register_locations";
  static const String requestVerifyCode = "auth/phone/request_verify_code/";
  static const String confirmVerifyCode = "auth/phone/confirm_verify_code/";
  static const String resetPassword = "auth/reset_password/";
  static const String forgotPassword = "auth/forgot_password/";

  // Home
  static const String getAllBrands = "brands";
  static const String getAllCars = "cars";
  static const String getReviewsreviews = "reviews";
  static const String getBestCars = "/cars/best";
  static const String getNearestCars = "/cars/nearest";
}
