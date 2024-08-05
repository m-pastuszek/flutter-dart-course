
// Generic type constraint
// We have to write <T extends followed by the base class>
extension IterableX<T extends num> on Iterable<T> {
  T sum() => reduce((value, element) => (value + element) as T);
}

void main() {
  final sum = [1, 2.0, 3].sum();
  print(sum);
}