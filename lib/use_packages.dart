import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UsePackages extends StatefulWidget {
  const UsePackages({super.key});

  @override
  State<UsePackages> createState() => _UsePackagesState();
}

class _UsePackagesState extends State<UsePackages> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    _launchInBrowser(
                        Uri.parse("https://www.facebook.com/himal.fullel/"));
                  },
                  icon: Icon(FontAwesomeIcons.facebook)),
              IconButton(
                  onPressed: () {}, icon: Icon(FontAwesomeIcons.youtube)),
              IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.google)),
              IconButton(
                  onPressed: () {
                    _makePhoneCall("9867527352");
                  },
                  icon: Icon(FontAwesomeIcons.phone))
            ],
          )
        ],
      ),
    );
  }
}
