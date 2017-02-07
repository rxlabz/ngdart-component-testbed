// Copyright (c) 2017, rxlabz. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

import 'package:xplor_ng_test_bed/compo/compo.dart';
import 'package:xplor_ng_test_bed/hello_dialog/hello_dialog.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, Compo],
  providers: const [materialProviders],
)
class AppComponent {
  // Nothing here yet. All logic is in HelloDialog.
}
