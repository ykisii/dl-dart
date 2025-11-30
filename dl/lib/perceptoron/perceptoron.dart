import 'package:scidart/numdart.dart';

int and(double x1, double x2) {
  final x = Array([x1, x2]);
  final w = Array([0.5, 0.5]);
  final b = -0.7;
  final ret = arraySum(x * w) + b;
  return ret <= 0 ? 0 : 1;
}

int nand(double x1, double x2) {
  final x = Array([x1, x2]);
  final w = Array([-0.5, -0.5]);
  final b = 0.7;
  final ret = arraySum(x * w) + b;
  return ret <= 0 ? 0 : 1;
}

int or(double x1, double x2) {
  final x = Array([x1, x2]);
  final w = Array([0.5, 0.5]);
  final b = -0.2;
  final ret = arraySum(x * w) + b;
  return ret <= 0 ? 0 : 1;
}

int xor(double x1, double x2) {
  final s1 = nand(x1, x2);
  final s2 = or(x1, x2);
  return and(s1.toDouble(), s2.toDouble());
}