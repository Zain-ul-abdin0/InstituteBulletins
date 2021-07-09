import 'dart:convert';

import 'package:InstitutesBulliten/src/businessLogic/models/school.dart';
import 'package:InstitutesBulliten/src/views/ui/InstituteScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Place {
  String imageUrl;
  String name;
  String country;

  Place({this.imageUrl, this.name, this.country});
}

List wonders = [
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Taj-Mahal.jpg",
      name: "DPS",
      country: "India"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg",
      name: "The Educators",
      country: "Brazil"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2016/03/petra-jordan9.jpg",
      name: "Cambridge Public School",
      country: "Jordan"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Great-Wall-of-China-view.jpg",
      name: "Asad Grammar School",
      country: "China"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/View-of-the-Colosseum.jpg",
      name: "The Colosseum",
      country: "Rome"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Machu-Picchu-around-sunset.jpg",
      name: "Machu Picchu",
      country: "Peru"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Chichen-Itza-at-night.jpg",
      name: "Chichén Itzá",
      country: "Mexico"),
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var rating = 3.0;

  Future<List<School>> fetchData() async {
    final response = await http.get('http://192.168.0.56:3000/getAllSchool');
    print(response);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => new School.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  @override
  Widget build(BuildContext context) {
    print(this.fetchData());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1BBC9B),
          title: Text("Home"),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(
              Icons.menu, // add custom icons also
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Feature Institutes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) => Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return InstituteScreen();
                              },
                            ),
                          )
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                child: Image.network(
                                  wonders[index].imageUrl,
                                  fit: BoxFit.fill,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  wonders[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  wonders[index].country,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Institute Recommendations',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (ctx, int index) {
                    return Container(
                      height: 350,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                                child: Image.network(
                                  wonders[index].imageUrl,
                                  fit: BoxFit.fill,
                                  width: MediaQuery.of(context).size.width,
                                ),

                                // decoration: BoxDecoration(
                                //   image: DecorationImage(
                                //     fit: BoxFit.fill,
                                //     image:
                                //         AssetImage("assets/images/School.jpeg"),
                                //   ),
                                // ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        wonders[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1BBC9B),
                                            fontSize: 18),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            (Icons.favorite),
                                            color: Color(0xFF1BBC9B),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  'Lahore, Punjab',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: SmoothStarRating(
                                  rating: rating,
                                  isReadOnly: false,
                                  color: Colors.yellow,
                                  size: 10,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.star_half,
                                  defaultIconData: Icons.star_border,
                                  starCount: 5,
                                  allowHalfRating: true,
                                  spacing: 2.0,
                                  onRated: (value) {
                                    print("rating value -> $value");
                                    // print("rating value dd -> ${value.truncate()}");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
