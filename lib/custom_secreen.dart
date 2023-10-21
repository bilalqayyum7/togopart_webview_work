import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomScreen extends StatelessWidget {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Rides'),
          onTap: () {
            _launchURL('https://www.togoparts.com/rides');
          },
        ),
        ListTile(

          title: TextButton.icon(onPressed: (){},
              icon: ImageIcon(AssetImage("assets/more_option/magazine_icon@3x.png")),
              label: Text("Magazine"),),
          onTap: () {
            _launchURL('https://www.togoparts.com/magazine');
          },
        ),
        ListTile(
          title: Text('Forum'),
          onTap: () {
            _launchURL('https://www.togoparts.com/forum');
          },
        ),
        ListTile(
          title: Text('Bike Shops'),
          onTap: () {
            _launchURL('https://www.togoparts.com/bikeshops');
          },
        ),
        ListTile(
          title: Text('Careers'),
          onTap: () {
            _launchURL('https://www.togoparts.com/careers');
          },
        ),
        ListTile(
          title: Text('Advertise on Togoparts'),
          onTap: () {
            _launchURL('https://www.togoparts.com/advertise');
          },
        ),
        ListTile(
          title: Text('About Togoparts'),
          onTap: () {
            _launchURL('https://www.togoparts.com/about');
          },
        ),
        ListTile(
          title: Text('Terms of Service'),
          onTap: () {
            _launchURL('https://www.togoparts.com/terms');
          },
        ),
      ],
    );
  }
}
