import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/shared/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButtons extends StatelessWidget {
  const ContactButtons({super.key});

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/github.svg', // Path to your LinkedIn SVG icon
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            onPressed: () => _launchURL('https://github.com/vignarajj'),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/medium.svg', // Path to your LinkedIn SVG icon
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            onPressed: () => _launchURL('https://medium.com/@vignarajj'),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/linkedin.svg', // Path to your LinkedIn SVG icon
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            onPressed: () => _launchURL(
                'https://www.linkedin.com/in/vignaraj-ravi-25750b59/'),
          ),
        ],
      ),
    );
  }
}
