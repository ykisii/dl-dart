import 'package:scidart/numdart.dart';

Array stepFunction(Array x) {
  return Array(arrayIsLessThan(x, 0).map((v)=> v ? 1.0 : 0.0).toList());
}

Array sigmoid(Array x) {
  return arrayDivisionToScalar(
    arrayAddToScalar(
      arrayExp(x, isNegative: true), 1), 1);
}