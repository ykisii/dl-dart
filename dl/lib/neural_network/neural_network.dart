import 'package:scidart/numdart.dart';

Array stepFunction(Array x) {
  return Array(arrayIsLessThan(x, 0).map((v)=> v ? 1.0 : 0.0).toList());
}
/* 1 / (1 + exp{-x}) */
Array sigmoid(Array x) {
  return ones(x.length) / arrayAddToScalar(arrayExp(x, isNegative: true), 1.0);
}
/* relu(1) => 1
   relu(-1) => 0
*/
double relu(double x) {
  return max(0, x);
}