// Exported to number_parsing.dart
// extension on String {
//   int? toIntOrNull() => int.tryParse(this);
// }

import 'number_parsing.dart';

void main() {
  int.tryParse('123');
  '123'.toIntOrNull();
}