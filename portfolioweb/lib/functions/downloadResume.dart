import 'dart:html';

downloadResume(url) {
  // ignore: unnecessary_new
  AnchorElement anchorElement = new AnchorElement(href: url);
  anchorElement.download = "Nakul";
  anchorElement.click();
}
