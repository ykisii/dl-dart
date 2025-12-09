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
  final y = sigmoid(x);
  expect(y.elementAt(0), 0.2689414213699951);
  expect(y.elementAt(1), 0.7310585786300049);
  expect(y.elementAt(2), 0.8807970779778823);
  });  
test('relu', () {
  expect(relu(1), 1);
  expect(relu(0), 0);
  expect(relu(0.1), 0.1);
  expect(relu(-0.1), 0);
  expect(relu(-1), 0);
  });  
}