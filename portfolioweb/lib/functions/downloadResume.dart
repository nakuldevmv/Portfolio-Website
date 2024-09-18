// void downloadResume(String url) {
//   AnchorElement anchorElement = AnchorElement(href: url);
//   anchorElement.download = "Nakul_Resume.pdf"; // Set the desired file name
//   anchorElement.target = '_blank'; // Opens the link in a new tab
//   anchorElement.click();
// }

import 'dart:html';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<void> downloadResume(String url) async {
  // Fetch the PDF file as bytes
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // Convert the response body to Uint8List
    final bytes = Uint8List.fromList(response.bodyBytes);

    // Create a blob from the bytes
    final blob = Blob([
      bytes
    ]);

    // Create an object URL for the blob
    final url = Url.createObjectUrlFromBlob(blob);

    // Create an anchor element to trigger the download
    final anchorElement = AnchorElement(href: url)
      ..download = "Nakul_Resume.pdf" // File name for download
      ..click();

    // Clean up the object URL after download
    Url.revokeObjectUrl(url);
  } else {
    print('Failed to download file: ${response.statusCode}');
  }
}
