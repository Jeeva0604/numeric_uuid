import 'package:numeric_uuid/numeric_uuid.dart';

void main() {
  // Default: Generate a 20-digit unique numeric UUID
  print("Default UUID (20 digits): ${NumericUUID.generate()}");

  // Generate different length UUIDs
  print("15-digit UUID: ${NumericUUID.generate(length: 15)}");
  print("30-digit UUID: ${NumericUUID.generate(length: 30)}");
  print("19-digit UUID: ${NumericUUID.generate(length: 19)}");

  // Ensure uniqueness by generating multiple UUIDs
  String id1 = NumericUUID.generate();
  String id2 = NumericUUID.generate();
  print("Unique IDs:");
  print("ID1: $id1");
  print("ID2: $id2");
  print("Are they different? ${id1 != id2}");

  // Handle invalid cases
  try {
    print(NumericUUID.generate(length: 5)); // Should throw an error
  } catch (e) {
    print("Error: $e");
  }

  try {
    print(NumericUUID.generate(length: 35)); // Should throw an error
  } catch (e) {
    print("Error: $e");
  }

  // Generate multiple UUIDs in a loop
  print("\nGenerating 5 random UUIDs:");
  for (int i = 0; i < 5; i++) {
    print(NumericUUID.generate(length: 18));
  }
}
