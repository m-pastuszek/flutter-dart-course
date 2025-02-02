class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw UnsupportedError('Denominator cannot be zero');
    }
  }

  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction (3, 0);
    print(f.value);
  } on UnsupportedError catch (e) {
    print(e);
    rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('testFraction done');
  }
}
void main() {
  testFraction();
  print('done');

}