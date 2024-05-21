import 'package:intl/intl.dart';

class AppFormatter {
  AppFormatter._();

  static String formatDate(DateTime? date) {
    return DateFormat('dd-MMM-yyyy').format(date ?? DateTime.now());
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    final cleaned = phoneNumber.replaceAll(RegExp(r'\D'), '');
    if (cleaned.length == 10) {
      return '(${cleaned.substring(0, 3)}) ${cleaned.substring(3, 6)}-${cleaned.substring(6)}';
    }
    if (cleaned.length == 11) {
      return '(${cleaned.substring(0, 1)}) ${cleaned.substring(1, 4)}-${cleaned.substring(4, 7)}-${cleaned.substring(7)}';
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    final cleaned = phoneNumber.replaceAll(RegExp(r'\D'), '');
    if (cleaned.length <= 2) return phoneNumber;

    final countryCode = '+${cleaned.substring(0, 2)}';
    final remainingDigits = cleaned.substring(2);

    final buffer = StringBuffer(countryCode);
    int groupLength = countryCode == '+1' ? 3 : 2;
    for (int i = 0; i < remainingDigits.length; i += groupLength) {
      final end = (i + groupLength < remainingDigits.length)
          ? i + groupLength
          : remainingDigits.length;
      buffer.write(' ${remainingDigits.substring(i, end)}');
    }
    return buffer.toString().trim();
  }
}
