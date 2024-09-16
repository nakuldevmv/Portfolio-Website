import 'dart:html';

downloadResume(url) {
  AnchorElement anchorElement = new AnchorElement(href: url);
  anchorElement.download = "Nakul Dev M V Resume";
  anchorElement.click();
}
