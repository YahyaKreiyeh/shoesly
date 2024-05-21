class AppRegex {
  AppRegex._();

  static final _emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  static final _passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
  static final _phoneNumberRegex = RegExp(r'^(09)[0-9]{8}$');
  static final _lowerCaseRegex = RegExp(r'(?=.*[a-z])');
  static final _upperCaseRegex = RegExp(r'(?=.*[A-Z])');
  static final _numberRegex = RegExp(r'(?=.*\d)');
  static final _specialCharacterRegex = RegExp(r'(?=.*[@$!%*?&])');
  static final _minLengthRegex = RegExp(r'.{8,}');

  static bool isEmailValid(String email) {
    return _emailRegex.hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return _passwordRegex.hasMatch(password);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    return _phoneNumberRegex.hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    return _lowerCaseRegex.hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return _upperCaseRegex.hasMatch(password);
  }

  static bool hasNumber(String password) {
    return _numberRegex.hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return _specialCharacterRegex.hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return _minLengthRegex.hasMatch(password);
  }
}
