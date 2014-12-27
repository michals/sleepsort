// Copyright (c) 2014, Michał Šrajer. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:sleepsort/sleepsort.dart' as sleepsort;

main() {
  List<int> input = [3, 1, 2];
  var eta = input.reduce((i, j) => i + j);
  print("Sorting... ETA=${eta}s");
  print("input: $input");
  sleepsort.sleepsort(input).then((List<int> sorted) {
    print("result: $sorted");
  });
}
