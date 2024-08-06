
Future<void> main() async {
   final stream = Stream.fromIterable([1,2,3]);
  Stream.value(10);
  Stream.error(Exception('Something went wrong')); // Stream can emit errors
  Stream.empty();
  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42)); // Stream that emits a single value after a delay
  Stream.periodic(Duration(seconds: 1), (x) => x); // Stream that emits events periodically

  final value = await stream.first;
  await stream.forEach((element) => print(element));

  final doubles = stream.map((e) => e * 2).where((value) => value > 3);
  print(doubles);
  await doubles.forEach(print);
}