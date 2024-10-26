import 'package:url_launcher/url_launcher.dart';

void openEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'nakuldev1561@gmail.com', // replace with your email
    // query: 'subject=Hello&body=How are you?', // Optional: Pre-fill subject and body
  );
  launchUrl(params);
}
