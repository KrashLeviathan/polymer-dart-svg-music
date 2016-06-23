// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('note_element.html')
library svg_polymer_playground.lib.note_element;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:svg_polymer_playground/svg-library.dart';
import 'package:svg_polymer_playground/music-library.dart';

@PolymerRegister('note-element')
class NoteElement extends PolymerElement {
  NoteType type;
  SvgNote svgNote;
  NoteModifier modifier;
  List<NoteDecorator> decorators;

  /// Constructors used to create instance of NoteElement.
  NoteElement.created() : super.created();
  factory NoteElement(NoteType type) {
    NoteElement note = new Element.tag('note-element') as NoteElement;
    note.type = type;
    note.svgNote = new SvgNote(note, type);
    note.svgNote.initWithProps({});
    return note;
  }

  @Listen('tap')
  void tapped(Event event, Map detail) {
    print("Tapped note-element");
  }

// Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of note-element is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of note-element is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// note-element is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when note-element has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}
