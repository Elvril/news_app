class NewsException implements Exception {
  String message;
  NewsException([this.message = 'something went wrong']) {
    message = 'news Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}
