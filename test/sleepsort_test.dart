// Copyright (c) 2014, Michał Šrajer. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library sleepsort_test;

import 'package:sleepsort/sleepsort.dart';
import 'package:unittest/unittest.dart';

void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('sort', () {
      return sleepsort([4, 1, 2, 1]).then((sorted) {
        expect(sorted, [1, 1, 2, 4]);
      });
    });
  });
}
