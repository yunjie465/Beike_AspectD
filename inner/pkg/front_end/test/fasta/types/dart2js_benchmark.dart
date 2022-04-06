// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "dart:io" show Platform;

import "subtypes_benchmark.dart" show run;

void main() =>
    run(Platform.script.resolve("benchmark_data/dart2js.json.gz"), "Dart2js");
