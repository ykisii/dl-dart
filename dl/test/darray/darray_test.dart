import 'package:dl/darray/darray.dart';
import 'package:dl/darray/darray_transforms.dart';
import 'package:test/test.dart';

void main() {
test('darray arrange', () {
  final da = Darray.arrange(start: 5.0, stop:10.0, step: 1);
  expect(da.length, 6);
  });
test('darray <', () {
  final x = Darray([-1, 0, 1, 1]);
  final y = x < 0;
  expect(y.list[0], true);
  expect(y.list[1], false);
  expect(y.list[2], false);
  expect(y.list[3], false);  
  });
test('darray <=', () {
  final x = Darray([-1, 0, 1, 1]);
  final y = x <= 0;
  expect(y.list[0], true);
  expect(y.list[1], true);
  expect(y.list[2], false);
  expect(y.list[3], false);  
  });  
test('darray >', () {
  final x = Darray([-1, 0, 1, 1]);
  final y = x > 0;
  expect(y.list[0], false);
  expect(y.list[1], false);
  expect(y.list[2], true);
  expect(y.list[3], true);
  });
test('darray >=', () {
  final x = Darray([-1, 0, 1, 1]);
  final y = x >= 0;
  expect(y.list[0], false);
  expect(y.list[1], true);
  expect(y.list[2], true);
  expect(y.list[3], true);
  });
test('darray boolToNum', () {
  final x = Darray([-1, 0, 1, -1, -1]);
  final y = x >= 0;
  expect(y.list[0], false);
  expect(y.list[1], true);
  expect(y.list[2], true);
  expect(y.list[3], false);
  expect(y.list[4], false);
  final z = y.boolToNum();
  expect(z.list[0], 0);
  expect(z.list[1], 1);
  expect(z.list[2], 1);
  expect(z.list[3], 0);
  expect(z.list[4], 0);
  });  
}