import 'package:flutter_test/flutter_test.dart';
import 'package:numeric_uuid/numeric_uuid.dart';

void main() {
  test('Generates a unique numeric UUID of correct length', () {
    String id = NumericUUID.generate(length: 20);
    expect(id.length, 20);
    expect(int.tryParse(id), isNotNull); // Ensure it's a valid number
  });

  test('Throws error when length is less than 10', () {
    expect(() => NumericUUID.generate(length: 9), throwsArgumentError);
  });

  test('Throws error when length is greater than 30', () {
    expect(() => NumericUUID.generate(length: 31), throwsArgumentError);
  });

  test('Ensures no trailing zeros', () {
    String id = NumericUUID.generate(length: 25);
    expect(id.endsWith('0'), isFalse);
  });

  test('Generates different UUIDs in successive calls', () {
    String id1 = NumericUUID.generate(length: 20);
    String id2 = NumericUUID.generate(length: 20);
    expect(id1, isNot(id2));
  });
}
