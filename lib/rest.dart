// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('rest.html')
library svg_polymer_playground.lib.rest;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('rest')
class Rest extends PolymerElement {

  /// Constructor used to create instance of Rest.
  Rest.created() : super.created();

  @Listen('tap')
  void tapped(Event event, Map detail) {
    print("Tapped Rest");
  }

// Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of rest is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of rest is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// rest is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when rest has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}
