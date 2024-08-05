// Extension must have a name when we want to make them importable.

extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}