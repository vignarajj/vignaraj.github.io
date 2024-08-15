import 'package:flutter/material.dart';
import 'package:portfolio/shared/models/medium_story.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../network/api_services.dart';

class MediumStoriesWidget extends StatefulWidget {
  const MediumStoriesWidget({super.key});

  @override
  _MediumStoriesWidgetState createState() => _MediumStoriesWidgetState();
}

class _MediumStoriesWidgetState extends State<MediumStoriesWidget> {
  late Future<List<MediumStory>> _mediumStories;

  @override
  void initState() {
    super.initState();
    _mediumStories = fetchAndParseMediumStories();
  }

  Future<List<MediumStory>> fetchAndParseMediumStories() async {
    final xmlString = await fetchXmlFeed();
    return parseXmlFeed(xmlString);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MediumStory>>(
      future: _mediumStories,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('No stories found');
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final story = snapshot.data![index];
              return ListTile(
                title: Text(story.title),
                subtitle: Text(story.pubDate),
                onTap: () {
                  // Open the story in a web browser
                  _launchURL(story.link);
                },
              );
            },
          );
        }
      },
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
