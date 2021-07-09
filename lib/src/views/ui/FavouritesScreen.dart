import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

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
      country: "Agra, India"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg",
      name: "The Educators",
      country: "Brazil"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2016/03/petra-jordan9.jpg",
      name: "Cambridge Public School",
      country: "Jordan, Iceland"),
  Place(
      imageUrl:
          "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Great-Wall-of-China-view.jpg",
      name: "Asad Grammar School",
      country: "Macao, China"),
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

class _FavouriteScreenState extends State<FavouriteScreen> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1BBC9B),
          title: Text("Favourite"),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (ctx, int index) {
              return Container(
                  height: 150,
                  width: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 250,
                            child: Image.network(
                              wonders[index].imageUrl,
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    wonders[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Color(0xFF1BBC9B)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Icon(
                                        Icons.location_city_sharp,
                                        size: 12,
                                        color: Color(0xff1BBC9B),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        wonders[index].country,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
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
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10.0, left: 3),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Center(
                                            child: Text(
                                          '9.0',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Color(0xff1BBC9B),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Wonderful',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            }));
  }
}
