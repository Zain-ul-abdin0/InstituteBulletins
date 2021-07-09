import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddReview extends StatefulWidget {
  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1BBC9B),
        title: Text("Divistional Public School"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/School.jpeg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
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
                                borderRadius: BorderRadius.circular(5)),
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
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Icon(
                              Icons.location_city_sharp,
                              size: 20,
                              color: Color(0xff1BBC9B),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Lahore, Punjab',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Icon(
                              Icons.call,
                              size: 20,
                              color: Color(0xff1BBC9B),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              '03202750031',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Icon(
                              Icons.mail,
                              size: 20,
                              color: Color(0xff1BBC9B),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'ahmza147@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                        color: Color(0xff1BBC9B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 10),
                    child: Container(
                      width: MediaQuery.of(context)
                          .size
                          .width, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                      child: Center(
                        //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                        child: Text(
                          "This text is very vedsafadslfkndsafsdf masndf mdsnaf mdsanf msdanf  sdf sadkf sdkaf ksjdaf dksajf asdkf kasdfdskf akjsdf kasdjf dskf dskjf sdajkf asd fjdsf sadf jasdf ry very very very very very very very very very very very very very very very very very very very very very very very long",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20.0),
                    child: Text(
                      'Add Review',
                      style: TextStyle(
                          color: Color(0xff1BBC9B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      minLines: 2,
                      maxLines: 10,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'Add your review',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 50.0,
                      margin: EdgeInsets.only(left: 5),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          "Submit Review".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        color: Color(0xFF1BBC9B),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
