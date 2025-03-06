# Numeric UUID



**numeric\_uuid** is a Dart package that generates unique numeric UUIDs of variable lengths (10-30 digits). It ensures uniqueness by combining timestamps and random values.

## Features

✔ Generate a numeric UUID with a default length of 20 digits\
✔ Customize the length (minimum 10, maximum 30 digits)\
✔ Guarantees uniqueness per execution\
✔ Easy to use API for Dart and Flutter projects

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  numeric_uuid: latest_version
```

Then, run:

```sh
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:numeric_uuid/numeric_uuid.dart';
```

### Generate UUIDs

```dart
void main() {
  print(NumericUUID.generate()); // Default 20-digit UUID
  print(NumericUUID.generate(length: 15)); // 15-digit UUID
  print(NumericUUID.generate(length: 30)); // 30-digit UUID

  // Ensuring uniqueness
  String id1 = NumericUUID.generate();
  String id2 = NumericUUID.generate();
  print(id1 != id2); // true
}
```

## Example Output

```
Default UUID (20 digits): 17412201844256773892
15-digit UUID: 567738921234567
30-digit UUID: 174122018442567738921435654321
19-digit UUID: 1741220184425677389
```

## Error Handling

If an invalid length is provided (less than 10 or greater than 30), the package will throw an error:

```dart
try {
  NumericUUID.generate(length: 5); // Error: Length must be between 10 and 30 digits
} catch (e) {
  print("Error: \$e");
}
```

## Contributing

Contributions are welcome! If you find an issue or want to add a feature, feel free to create a pull request or raise an issue in the GitHub repository.

[GitHub Repo](https://github.com/Jeeva0604/numeric_uuid)

## Connect with Me

📌 LinkedIn: Jeeva G 

---

This package is developed and maintained by [Jeeva G ](https://www.linkedin.com/in/jeeva-g-r0628/). 🚀

