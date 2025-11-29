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
  test('NAND false, false', () {
    expect(nand(0, 0), 1);
  });
  test('NAND false, true', () {
    expect(nand(0, 1), 1);
  });
  test('NAND true, false', () {
    expect(nand(1, 0), 1);
  });
  test('NAND true, true', () {
    expect(nand(1, 1), 0);
  });
  test('OR false, false', () {
    expect(or(0, 0), 0);
  });
  test('OR false, true', () {
    expect(or(0, 1), 1);
  });
  test('OR true, false', () {
    expect(or(1, 0), 1);
  });
  test('OR true, true', () {
    expect(or(1, 1), 1);
  });
}