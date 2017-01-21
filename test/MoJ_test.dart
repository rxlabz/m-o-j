// Copyright (c) 2017, rxlabz. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:moj/moj.dart';
import 'package:test/test.dart';

void main() {
  group('MoJ methods', () {

    test(' => tag() ', () {
      expect(MoJ.tag(':tv:'), isNot(':tv:'));
      expect(MoJ.tag(':vt:'), equals(':vt:'));
    });

    test(' => parse() ', () {
      expect(MoJ.parse('I :heart: watching :tv:'), equals('I ${MoJ.tag(':heart:')} watching ${MoJ.tag(':tv:')}'));
      expect(MoJ.parse('I :heart: watching :tv:'), equals('I ❤️ watching 📺'));
      expect(MoJ.parse('I :heart: watching :vt:'), equals( 'I ❤️ watching :vt:'));
    });
  });
}
