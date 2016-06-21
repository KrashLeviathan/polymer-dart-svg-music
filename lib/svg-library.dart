library svg_library;

import 'dart:html';

part 'svg/svg-notes.dart';
part 'svg/svg-rests.dart';

class SvgValidator implements NodeValidator {

  static final Set<String> _allowedElements = new Set.from([
    'svg',
    'defs',
    'metadata',
    'rdf:rdf',
    'cc:work',
    'dc:format',
    'dc:type',
    'dc:title',
    'g',
    'path'
  ]);

  static const Map<String, String> _allowedAttributes = const {
    '*': 'attr',
    'tagname': 'etc'
  };

  /**
   * Returns true if the tagName is an accepted type.
   */
  bool allowsElement(Element element) {
    // TODO
    return _allowedElements.contains(_safeTagName(element));
  }

  /**
   * Returns true if the attribute is allowed.
   *
   * The attributeName parameter will always be in lowercase.
   *
   * See [allowsElement] for format of tagName.
   */
  bool allowsAttribute(Element element, String attributeName, String value) {
    String tagName = _safeTagName(element);
    return _allowedElements.contains(tagName);
//    return _allowedElements.contains(tagName) && _allowedAttributes['$tagName'] != null;
  }

  String _safeTagName(element) {
    try {
      // Safe as we plumb directly to a C++ native method.
      return element.tagName;
    } catch (e) {}
    return 'element tag unavailable';
  }
}
