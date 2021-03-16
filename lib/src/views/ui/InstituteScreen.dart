import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class InstituteScreen extends StatefulWidget {
  @override
  _InstituteScreenState createState() => _InstituteScreenState();
}

class _InstituteScreenState extends State<InstituteScreen> {
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
          onTap: () {/* Write listener code here */},
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
              height: 30,
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
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Location',
                      style: TextStyle(
                          color: Color(0xff1BBC9B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: GoogleMap(
                          onMapCreated: _onMapCreated,
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 11.0,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          color: Color(0xff1BBC9B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        width: MediaQuery.of(context).size.width / 2,
                        //  height: 50,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage("assets/images/School.jpeg"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20.0),
                    child: Text(
                      'Reviews',
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
                                      'Albert James',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Center(
                                        child: Text(
                                      '9',
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
