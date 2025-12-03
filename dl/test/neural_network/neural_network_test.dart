import 'package:dl/darray/darray.dart';
import 'package:dl/neural_network/neural_network.dart';
import 'package:test/test.dart';

void main() {
test('step_function', () {
  final x = Darray.arrange(start: -5.0, stop:5.0, step:1.0);
  final y = stepFunction(x);
  expect(x.list[4], -1.0);
  expect(x.list[5], 0.0);
  expect(x.list[6], 1.0);
  expect(y.list[4], 0);
  expect(y.list[5], 0);
  expect(y.list[6], 1);  
  });
}