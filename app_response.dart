class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return '$_prefix \n $_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super([message], 'Error during communicaton');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}

class UnauthorizedRequestException extends AppException {
  UnauthorizedRequestException([String? message])
      : super(message, 'Invalid request');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid input ');
}
