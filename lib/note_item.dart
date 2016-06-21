// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('note_item.html')
library svg_polymer_playground.lib.note_item;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'svg-library.dart';

@PolymerRegister('note-item')
class NoteItem extends PolymerElement {
  NoteType type;
  NoteModifier modifier;
  List<NoteDecorator> decorators;

  /// Constructors used to create instance of NoteItem.
  NoteItem.created() : super.created();
  factory NoteItem(NoteType type) {
    NoteItem note = new Element.tag('note-item') as NoteItem;
    note.type = type;
    note._setSvg(type);
    return note;
  }

  @Listen('tap')
  void tapped(Event event, Map detail) {
    print("Tapped note-item");
  }

  void _setSvg(NoteType type) {
    switch (type) {
      case NoteType.WHOLE:
        break;
      case NoteType.HALF:
        break;
      case NoteType.QUARTER:
        setInnerHtml(SvgRender.quarterNote('quarter-note-1'), validator: new SvgValidator());
        break;
      case NoteType.EIGHTH:
        break;
      case NoteType.SIXTEENTH:
        break;
      case NoteType.THIRTYSECOND:
        break;
      case NoteType.SIXTYFOURTH:
        break;
    }
  }

// Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of note-item is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of note-item is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// note-item is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when note-item has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}

enum NoteType {
  WHOLE, HALF, QUARTER, EIGHTH, SIXTEENTH, THIRTYSECOND, SIXTYFOURTH
}

enum NoteModifier {
  FLAT, SHARP, NATURAL
}

enum NoteDecorator {
  DOT
}