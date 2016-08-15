part of svg_library;

//width="247.00006mm"
//height="57.629005mm"
//viewBox="0 0 875.19707 204.19726"

const double STAFF_PIXEL_WIDTH = 100.5;
const double STAFF_VB_MIN_X = 0.0;
const double STAFF_VB_MIN_Y = 0.0;
const double STAFF_VB_WIDTH = 876.0;
const double STAFF_VB_HEIGHT = 205.0;

class SvgStaff extends SvgRenderable {
  static const List<String> propKeys = const ['SPACING'];
  static const int DEFAULT_SPACING = 50;

  int get spacing => _spacing;
  int _spacing;

  SvgStaff(HtmlElement element)
      : super(element, STAFF_PIXEL_WIDTH, STAFF_VB_MIN_X, STAFF_VB_MIN_Y, STAFF_VB_WIDTH, STAFF_VB_HEIGHT);

  initWithProps(Map<String, String> props) {
    try {
      _spacing = int.parse(props[propKeys[0]]);
    } catch (_) {
      _spacing = DEFAULT_SPACING;
    }
    _render(_staff());
  }

  String _staff() => '''
  <g
     id="g-${idNumber}"
     transform="translate(215,-410)">
    ${_path(0)}
    ${_path(1)}
    ${_path(2)}
    ${_path(3)}
    ${_path(4)}
  </g>
  ''';

  String _path(int index) => '''
  <path
       style="fill:none;fill-rule:evenodd;stroke:${STAFF_STROKE_COLOR};stroke-width:${STAFF_STROKE_WIDTH};shape-rendering:geometricPrecision;"
       id="path-${idNumber}-${index}"
       d="m -214,${413 + (spacing * index)} 876,0" />
  ''';


  // Simple Line
//  <svg height="210" width="500">
//  <line x1="0" y1="0" x2="200" y2="200" style="stroke:rgb(255,0,0);stroke-width:2" />
//  </svg>
}
