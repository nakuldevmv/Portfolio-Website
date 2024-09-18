import 'dart:html';

downloadResume(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "Nakul";
  anchorElement.click();
}
