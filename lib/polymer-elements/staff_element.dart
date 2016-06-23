// Copyright (c) 2016, Nathan Karasch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('staff_element.html')
library svg_polymer_playground.lib.staff_element;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:svg_polymer_playground/svg-library.dart';

@PolymerRegister('staff-element')
class StaffElement extends PolymerElement {
  SvgStaff svgStaff;

  /// Constructors used to create instance of StaffElement.
  StaffElement.created() : super.created();

  factory StaffElement() {
    StaffElement staff = new Element.tag('staff-element') as StaffElement;
    staff.svgStaff = new SvgStaff(staff);
    staff.svgStaff.initWithProps({});
    return staff;
  }

// Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of staff is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of staff is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// staff is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when staff has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}
