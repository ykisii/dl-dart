import 'package:dl/darray/darray.dart';

extension DarrayTransforms on Darray {
  Darray boolToNum() {
    return Darray(list.map((v) => v ? 1 : 0).toList());
  }
}