part of svg_library;

//width="15.281823mm"
//height="51.271614mm"

class SvgNote extends SvgRenderable {
  NoteType get type => _type;
  NoteType _type;

  SvgNote(HtmlElement element, this._type)
      : super(element, NOTE_1_PIXEL_WIDTH, NOTE_1_VB_MIN_X, NOTE_1_VB_MIN_Y, NOTE_1_VB_WIDTH, NOTE_1_VB_HEIGHT);

  initWithProps(Map<String, String> props) {
    switch (type) {
      case NoteType.WHOLE:
        break;
      case NoteType.HALF:
        break;
      case NoteType.QUARTER:
        _render(_quarterNote());
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

  String _quarterNote({double pixelWidth: 5.5, bool stemDown: false, bool flag: true}) => '''
  <g
     id="g-${idNumber}"
     transform="translate(-352,-201)">
    <path
       style="fill:${NOTATION_FILL_COLOR};fill-rule:evenodd;stroke:${NOTATION_STROKE_COLOR};stroke-width:${NOTATION_STROKE_WIDTH};shape-rendering:geometricPrecision;"
       id="path-${idNumber}"
       d="m 406.93825,201.66251 0,151.9538 c 0,5.63465 -1.8049,10.72401 -5.41471,15.1772 -3.6098,4.54408 -8.2123,8.08845 -13.71725,10.54225 -5.5952,2.4538 -11.00991,3.72614 -16.33437,3.72614 -5.05372,0 -9.29524,-1.36322 -12.72456,-3.99878 -3.42931,-2.72644 -5.32446,-6.45258 -5.68544,-11.2693 0.18049,-5.27113 2.16588,-10.26961 5.86593,-14.90456 3.70005,-4.63496 8.3928,-8.3611 13.89775,-11.08754 5.50495,-2.81732 10.91966,-4.18055 16.15387,-4.18055 5.32447,0 9.92697,1.54499 13.62702,4.54408 l 0,-140.50274 4.33176,0 z" />
  </g>
</svg>
  ''';

}
