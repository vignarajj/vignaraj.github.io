import 'package:http/http.dart' as http;
import 'package:portfolio/shared/models/medium_story.dart';
import 'package:xml/xml.dart' as xml;

Future<String> fetchXmlFeed() async {
  print("fetchXmlFeed");
  try {
    final response =
    await http.get(Uri.parse('https://medium.com/feed/@vignarajj'));
    print("response:: ${response.statusCode}");
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load XML feed');
    }
  }catch(e, trace){
    print("error:: $e");
    print("trace:: $trace");
    return "error";
  }
}

Future<List<MediumStory>> parseXmlFeed(String xmlString) async {
  final document = xml.XmlDocument.parse(xmlString);
  final items = document.findAllElements('item');

  return items.map((item) {
    final title = item.findElements('title').single.value.toString();
    final link = item.findElements('link').single.value.toString();
    final pubDate = item.findElements('pubDate').single.value.toString();
    final description =
        item.findElements('description').single.value.toString();

    return MediumStory(
      title: title,
      link: link,
      pubDate: pubDate,
      description: description,
    );
  }).toList();
}
