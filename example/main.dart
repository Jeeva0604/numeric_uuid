import 'dart:developer';
import 'package:numeric_uuid/numeric_uuid.dart';

void main() {
  // Default: Generate a 20-digit unique numeric UUID
  log("Default UUID (20 digits): ${NumericUUID.generate()}");

  // Generate different length UUIDs
  log("15-digit UUID: ${NumericUUID.generate(length: 15)}");
  log("30-digit UUID: ${NumericUUID.generate(length: 30)}");
  log("19-digit UUID: ${NumericUUID.generate(length: 19)}");

  // Ensure uniqueness by generating multiple UUIDs
  String id1 = NumericUUID.generate();
  String id2 = NumericUUID.generate();
  log("Unique IDs:");
  log("ID1: $id1");
  log("ID2: $id2");
  log("Are they different? ${id1 != id2}");

  // Handle invalid cases
  try {
    log(NumericUUID.generate(length: 5)); // Should throw an error
  } catch (e) {
    log("Error: $e");
  }

  try {
    log(NumericUUID.generate(length: 35)); // Should throw an error
  } catch (e) {
    log("Error: $e");
  }

  // Generate multiple UUIDs in a loop
  log("\nGenerating 5 random UUIDs:");
  for (int i = 0; i < 5; i++) {
    log(NumericUUID.generate(length: 18));
  }
}
