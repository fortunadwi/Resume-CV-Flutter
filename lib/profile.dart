import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.commentDots,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Text(
                    "I am a student in progress undergraduate level education at a university in Tangerang. Young people who are creative and happy to be creative, exploration and dive into all things Web programming I am very happy when I can implement and share what I have learned so far others. So that it can be of mutual benefit."),
              ),
              _buildTitle("Skills"),
              SizedBox(height: 10.0),
              _buildSkillRow("Php", 0.75),
              SizedBox(height: 5.0),
              _buildSkillRow("Laravel", 0.62),
              SizedBox(height: 5.0),
              _buildSkillRow("Java", 0.87),
              SizedBox(height: 5.0),
              _buildSkillRow("Flutter", 0.70),
              SizedBox(height: 20.0),
              _buildTitle("Experience"),
              // SizedBox(height: 10.0),
              // _buildExperienceRow(
              //     company: "GID Nepal",
              //     duration: 'Wordpress Developer',
              //     position: '2010 - 2012'),
              _buildExperienceRow(
                  company: "PT. Eco Fiber",
                  duration: 'Operator',
                  position: 'July 2017 - Oct 2017'),
              _buildExperienceRow(
                  company: "One Tech Solutions",
                  duration: 'RnD Software Developer',
                  position: '2015 - 2018'),
              _buildExperienceRow(
                  company: "Politeknik Gajah Tunggal",
                  duration: 'Software Developer',
                  position: 'Sept 2021 - Des 2021'),

              _buildTitle("Education"),
              SizedBox(height: 5.0),

              _buildExperienceRow(
                  company: "SMK Negeri 5 Kab. Tangerang",
                  position: "Student",
                  duration: "2015 - 2018"),

              _buildExperienceRow(
                  company: "Multimedia Nusantara University",
                  position: "Student Exchange Programs",
                  duration: "Feb 2021 - Mei 2021"),

              _buildExperienceRow(
                  company: "Esa Unggul University",
                  position: "Student",
                  duration: "2018 - current"),

              _buildTitle("Contact"),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(Icons.mail, color: Colors.black54),
                  SizedBox(width: 10.0),
                  Text(
                    "dwifortuna36@gmail.com",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),

              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(Icons.phone, color: Colors.black54),
                  SizedBox(width: 10.0),
                  Text(
                    "0882 2690 6420",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),

              _buildSocialsRow(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.facebookF),
          onPressed: () {
            _launchURL("https://www.facebook.com/liu.bei.54772");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/fortunadwi");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.green,
          icon: Icon(FontAwesomeIcons.whatsapp),
          onPressed: () {
            _launchURL("https://wa.me/6288226906420");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {required String company,
      required String position,
      required String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0),
        Expanded(
            flex: 2,
            child: Text(skill.toUpperCase(), textAlign: TextAlign.right)),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 35.0,
                ),
                foregroundImage: AssetImage('assets/img/profile.jpg'))),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Muhamad Fortuna Dwi Nugroho",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Full Stack Developer"),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.locationDot,
                    size: 12.0, color: Colors.red),
                SizedBox(height: 5.0),
                Text(
                  " Jakarta, Indonesia",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
