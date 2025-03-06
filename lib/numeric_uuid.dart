import 'dart:math';

class NumericUUID {
  static final Random _random = Random();
  static int _counter = 0;

  /// Generates a unique numeric UUID with the given [length].
  /// Default length is 20. Supports lengths between 10 and 30 digits.
  ///
  /// - Ensures uniqueness using timestamp and a counter.
  /// - If the generated number is longer than the required length, it trims from the left.
  /// - If shorter, it appends random digits to reach the required length.
  ///
  /// Example:
  /// ```dart
  /// String uuid = NumericUUID.generate(); // Default 20-digit ID
  /// String customUuid = NumericUUID.generate(length: 15); // 15-digit ID
  /// ```
  static String generate({int length = 20}) {
    if (length < 10 || length > 30) {
      throw ArgumentError("Length must be between 10 and 30 digits");
    }

    // Get the current timestamp in microseconds (ensuring uniqueness)
    int timestamp = DateTime.now().microsecondsSinceEpoch;

    // Increment counter to avoid duplicates
    _counter++;

    // Concatenate timestamp with counter
    String uniqueNumber = '$timestamp$_counter';

    // If the unique number is too long, trim from the left
    if (uniqueNumber.length > length) {
      return uniqueNumber.substring(uniqueNumber.length - length);
    }

    // If the unique number is too short, add random digits instead of zeros
    while (uniqueNumber.length < length) {
      uniqueNumber +=
          _random.nextInt(10).toString(); // Append a random digit (0-9)
    }

    return uniqueNumber;
  }
}
