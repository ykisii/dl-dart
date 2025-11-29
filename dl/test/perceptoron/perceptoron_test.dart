import 'package:dl/perceptoron/perceptoron.dart';
import 'package:test/test.dart';

void main() {
  test('AND false, false', () {
    expect(and(0, 0), 0);
  });
  test('AND false, true', () {
    expect(and(0, 1), 0);
  });
  test('AND true, false', () {
    expect(and(1, 0), 0);
  });
  test('AND true, true', () {
    expect(and(1, 1), 1);
  });  
}