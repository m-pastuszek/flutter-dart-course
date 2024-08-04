import 'dart:math';

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

void main() {
  final path = ClosedPath();
  path.moveTo(Point(0, 0));
  path.lineTo(Point(2, 0));
  path.lineTo(Point(2, 2));
  path.lineTo(Point(0, 2));
  path.lineTo(Point(0, 0));

  // Cascade operator
  final path2 = ClosedPath()
    // ?..moveTo(Point(0, 0))  // also null aware
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));
}
