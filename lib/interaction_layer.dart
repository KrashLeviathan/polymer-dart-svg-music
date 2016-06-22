// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('interaction_layer.html')
library svg_polymer_playground.lib.interaction_layer;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:svg_polymer_playground/music-library.dart';
import 'note_item.dart';

@PolymerRegister('interaction-layer')
class InteractionLayer extends PolymerElement {

  /// Constructor used to create instance of InteractionLayer.
  InteractionLayer.created() : super.created();

  @Listen('tap')
  void tapped(Event event, Map detail) {
    NoteItem note = new NoteItem(NoteType.QUARTER)
    ..style.left = "${detail['x']}px"
    ..style.top = "${detail['y']}px";
    append(note);
  }

// Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of interaction-layer is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of interaction-layer is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// interaction-layer is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when interaction-layer has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}
