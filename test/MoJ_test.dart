// Copyright (c) 2017, rxlabz. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:moj/moj.dart';
import 'package:test/test.dart';

void main() {
  group('MoJ methods', () {

    test(' => tag() ', () {
      expect(MoJ.tag(':heart:'), equals('❤️'));
      expect(MoJ.tag('::heart::'), equals(':❤️:'));
      expect(MoJ.tag(':undefined:'), equals(':undefined:'));
      expect(MoJ.tag('undefined:'), equals('undefined:'));
    });

    test(' => parse() ', () {
      expect(MoJ.parse('I :heart: my :computer:'),
          equals('I ${MoJ.tag(':heart:')} my ${MoJ.tag(':computer:')}'));
      expect(MoJ.parse('I :heart: my :computer:'), equals('I ❤️ my 💻'));
      expect(MoJ.parse('I ::heart:: my ::computer::'), equals('I :❤️: my :💻:'));
      expect(MoJ.parse('I :heart: my :vt:'), equals('I ❤️ my :vt:'));
    });
  });
}
