class ApiConstants {
  ApiConstants._();
  static const String apiBaseUrl =
      "https://fhyqibmegjapfhrkwhwe.supabase.co/rest/v1";
  static const String apiKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZoeXFpYm1lZ2phcGZocmt3aHdlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxNjEzMzk5MiwiZXhwIjoyMDMxNzA5OTkyfQ.muYjEYPql0QXefcKjcSt0PqkNcpYk2DtHD8blB_jo1A";
  static const String apiAuthorization =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZoeXFpYm1lZ2phcGZocmt3aHdlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxNjEzMzk5MiwiZXhwIjoyMDMxNzA5OTkyfQ.muYjEYPql0QXefcKjcSt0PqkNcpYk2DtHD8blB_jo1A';

  static const String products = "/products_with_first_image";
  static const String product = "/rpc/get_product_with_images";
  static const String reviews = "/review";
  static const String createOrder = '/orders';
  static const String createOrderItem = '/order_items';
}

class ApiErrors {
  ApiErrors._();
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
