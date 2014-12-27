// Copyright (c) 2014, Michał Šrajer. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The sleepsort library.
library sleepsort;

import 'dart:async';

/**
 * The SleepSort is based on anonymouse genius' work from http://dis.4chan.org/read/prog/1295544154/
 * 
 * Usage example:
 * 
 *     sleepsort.sleepsort([3, 1, 2]).then((List<int> sorted) {
 *       print(sorted);
 *     });
 * 
 */
Future<List<int>> sleepsort(List<int> input) {
  List<Future<int>> tasks = [];
  List<int> result = [];
  for (int i in input) {
    tasks.add(new Future.delayed(new Duration(seconds: i), () {
      result.add(i);
    }));
  }
  return Future.wait(tasks).then((_) {
    return result;
  });
}
