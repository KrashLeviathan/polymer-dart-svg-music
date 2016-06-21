part of svg_library;

//width="15.281823mm"
//height="51.271614mm"

class SvgRender {
  static String quarterNote(String id, {int pixelWidth: 5, bool stemDown: false, bool flag: true}) => '''
<svg
   width="${pixelWidth}px"
   viewBox="0 0 54.148192 181.67107"
   id="${id}"
   version="1.1"
   sodipodi:docname="note-quarter-up.svg">
  <metadata
     id="metadata3555">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     id="layer1"
     transform="translate(-352.9259,-201.52667)">
    <path
       style="fill:#131516;fill-rule:evenodd;stroke:#131516;stroke-width:0.27168819;image-rendering:optimizeQuality;shape-rendering:geometricPrecision;text-rendering:geometricPrecision"
       id="path23"
       d="m 406.93825,201.66251 0,151.9538 c 0,5.63465 -1.8049,10.72401 -5.41471,15.1772 -3.6098,4.54408 -8.2123,8.08845 -13.71725,10.54225 -5.5952,2.4538 -11.00991,3.72614 -16.33437,3.72614 -5.05372,0 -9.29524,-1.36322 -12.72456,-3.99878 -3.42931,-2.72644 -5.32446,-6.45258 -5.68544,-11.2693 0.18049,-5.27113 2.16588,-10.26961 5.86593,-14.90456 3.70005,-4.63496 8.3928,-8.3611 13.89775,-11.08754 5.50495,-2.81732 10.91966,-4.18055 16.15387,-4.18055 5.32447,0 9.92697,1.54499 13.62702,4.54408 l 0,-140.50274 4.33176,0 z"
       class="fil1 str1" />
  </g>
</svg>
  ''';
}
