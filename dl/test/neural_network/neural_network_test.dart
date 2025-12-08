import 'package:dl/neural_network/neural_network.dart';
import 'package:scidart/numdart.dart';
import 'package:test/test.dart';

void main() {
test('step_function', () {
  final x = createArrayRange(start: -3, stop: 3, step: 1);
  //[-3, -2, -1, 0, 1, 2, 3]
  final y = stepFunction(x);
  expect(y.elementAt(0), 1);
  expect(y.elementAt(1), 1);
  expect(y.elementAt(2), 1);
  expect(y.elementAt(3), 0);
  expect(y.elementAt(4), 0);
  expect(y.elementAt(5), 0);
  });
test('sigmoid', () {
  final x = Array([-1.0, 1.0, 2.0]);
  //[-3, -2, -1, 0, 1, 2, 3]
  final y = sigmoid(x);
  expect(y.elementAt(0), 0.26894142);
  expect(y.elementAt(1), 0.73105858);
  expect(y.elementAt(2), 0.88079708);
  });  
}