import 'package:dl/darray/darray.dart';
import 'package:dl/darray/darray_transforms.dart';

Darray stepFunction(Darray x) {
  return (x > 0).boolToNum();
}