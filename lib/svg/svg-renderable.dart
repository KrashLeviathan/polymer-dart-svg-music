part of svg_library;

int _svgCount = 0;

abstract class SvgRenderable {
  final int idNumber = _svgCount++;
  double pixelWidth;
  int scale = 1;

  HtmlElement _element;
  double _vbMinX;
  double _vbMinY;
  double _vbWidth;
  double _vbHeight;

  SvgRenderable(this._element, this.pixelWidth, this._vbMinX, this._vbMinY, this._vbWidth, this._vbHeight);

  String _svgAttributes(String body) => '''
  <svg
     width="${pixelWidth * scale}px"
     viewBox="$_vbMinX $_vbMinY $_vbWidth $_vbHeight"
     id="svg-$idNumber"
     version="1.1">
     ${body}
   </svg>
  ''';

  void _render(String svgBody) {
    String innerHtml = _svgAttributes(svgBody);
    _element.setInnerHtml(innerHtml, validator: new SvgValidator());
  }

  void initWithProps(Map<String, String> props);
}
