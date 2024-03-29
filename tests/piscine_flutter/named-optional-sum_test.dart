@Timeout(Duration(seconds: 5))

import 'dart:math';
import 'package:test/test.dart';

import '/jail/student/named-optional-sum.dart' as student;

void main() {
  group('namedOptionalSum', () {
    for (int i = 0; i < 50; i++) {
      Random rnd = new Random();
      int first = -100 + rnd.nextInt(200);
      int second = -100 + rnd.nextInt(200);
      int third = -100 + rnd.nextInt(200);

      test(
          'namedOptionalSum(first: ${first}, second: ${second}, third: ${third})',
          () {
        expect(
            student.namedOptionalSum(
                first: first, second: second, third: third),
            equals(first + second + third));
      });

      test('namedOptionalSum(first: ${first}, second: ${second})', () {
        expect(student.namedOptionalSum(first: first, second: second),
            equals(first + second));
      });

      test('namedOptionalSum(second: ${second}, third: ${third})', () {
        expect(student.namedOptionalSum(second: second, third: third),
            equals(second + third));
      });

      test('namedOptionalSum(first: ${first}, third: ${third})', () {
        expect(student.namedOptionalSum(first: first, third: third),
            equals(first + third));
      });

      test('namedOptionalSum(first: ${first})', () {
        expect(student.namedOptionalSum(first: first), equals(first));
      });

      test('namedOptionalSum(second: ${second})', () {
        expect(student.namedOptionalSum(second: second), equals(second));
      });

      test('namedOptionalSum(third: ${third})', () {
        expect(student.namedOptionalSum(third: third), equals(third));
      });
    }
  });
}
