import 'package:dl/darray/darray.dart';
import 'package:test/test.dart';

void main() {
test('darray arrange', () {
  final da = Darray.arrange(start: 5.0, stop:10.0, step: 1);
  expect(da.length, 6);
  print(da);
  });
}