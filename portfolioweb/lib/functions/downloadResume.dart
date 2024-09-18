import 'dart:html';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

// Function to convert normal GitHub link to raw link
String convertToRawLink(String url) {
  // Check if the URL is a valid GitHub link
  if (url.contains('github.com') && url.contains('/blob/')) {
    // Replace 'github.com' with 'raw.githubusercontent.com'
    // and remove the 'blob' part from the link
    String rawLink = url.replaceFirst('github.com', 'raw.githubusercontent.com').replaceFirst('/blob/', '/');
    return rawLink;
  } else {
    // Return the original URL if it's not in the expected format
    return 'Invalid GitHub file link';
  }
}

// Function to download a file from a URL
Future<void> downloadResume(String url) async {
  // Convert the URL to raw format if it's a GitHub link
  String downloadUrl = convertToRawLink(url);

  // Check if the URL is valid for download
  if (downloadUrl == 'Invalid GitHub file link') {
    print('Invalid URL format');
    return;
  }

  // Fetch the PDF file as bytes
  final response = await http.get(Uri.parse(downloadUrl));

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



// import 'dart:html';
// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:http/http.dart' as http;

// void downloadResume(String url) {
//   AnchorElement anchorElement = AnchorElement(href: url);
//   anchorElement.download = "Nakul_Resume.pdf"; // Set the desired file name
//   anchorElement.target = '_blank'; // Opens the link in a new tab
//   anchorElement.click();
// }



// Future<void> downloadResume(String url) async {
//   // Fetch the PDF file as bytes
//   final response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     // Convert the response body to Uint8List
//     final bytes = Uint8List.fromList(response.bodyBytes);

//     // Create a blob from the bytes
//     final blob = Blob([
//       bytes
//     ]);

//     // Create an object URL for the blob
//     final url = Url.createObjectUrlFromBlob(blob);

//     // Create an anchor element to trigger the download
//     final anchorElement = AnchorElement(href: url)
//       ..download = "Nakul_Resume.pdf" // File name for download
//       ..click();

//     // Clean up the object URL after download
//     Url.revokeObjectUrl(url);
//   } else {
//     print('Failed to download file: ${response.statusCode}');
//   }
// }
