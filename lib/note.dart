// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('note.html')
library svg_polymer_playground.lib.note;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('note')
class Note extends PolymerElement {

  /// Constructor used to create instance of Note.
  Note.created() : super.created();

  @Listen('tap')
  void tapped(Event event, Map detail) {
    print("Tapped [ x: ${detail['x']}, y: ${detail['y']} ]");
    querySelector('note').append(new SpanElement()..text = "()"..style.position="absolute"..style.left="${detail['x']}px"..style.top="${detail['y']}px");
  }

// Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of note is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of note is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// note is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when note has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}
