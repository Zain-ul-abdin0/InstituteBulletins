import 'package:InstitutesBulliten/src/views/ui/AdmissionForm.dart';
import 'package:InstitutesBulliten/src/views/ui/JobApplicationForm.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class JobsScreen extends StatefulWidget {
  @override
  _JobsScreenState createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  var rating = 3.0;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
                      'JOBS',
                      style: TextStyle(
                          color: Color(0xff1BBC9B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (ctx, int) {
                  return Container(
                    height: 250,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/School.jpeg",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 50),
                                    child: Text(
                                      'Post: English Subject Specialist',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "This text is very vedsafadslfkndsafsdf masndf mdsnaf mdsanf msdanf  sdf sadkf sdkaf ksjdaf dksajf asdkf kasdfdskf akjsdf kasdjf dskf dskjf sdajkf asd fjdsf sadf jasdf ry very very very very very very very very very very very very very very very very very very very very very very very long",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50.0,
                              width: MediaQuery.of(context).size.width / 1.2,
                              margin: EdgeInsets.only(left: 5),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text(
                                  "Apply Here".toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return JobApplicationForm();
                                      },
                                    ),
                                  );
                                },
                                color: Color(0xFF1BBC9B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
