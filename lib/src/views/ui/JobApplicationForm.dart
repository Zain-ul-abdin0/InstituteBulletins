import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class JobApplicationForm extends StatefulWidget {
  @override
  _JobApplicationFormState createState() => _JobApplicationFormState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class _JobApplicationFormState extends State<JobApplicationForm> {
  var rating = 3.0;
  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1BBC9B),
          title: Text("Addmission Form"),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: 25.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Post Applied For',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.username = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.email = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Applicant Name',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: "First Name",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.password = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      obscureText: true,
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'DOB',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "DD-MM-YY",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.email = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Male'),
                      leading: Radio(
                        value: BestTutorSite.javatpoint,
                        groupValue: _site,
                        onChanged: (BestTutorSite value) {
                          setState(() {
                            _site = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Female'),
                      leading: Radio(
                        value: BestTutorSite.w3schools,
                        groupValue: _site,
                        onChanged: (BestTutorSite value) {
                          setState(() {
                            _site = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "@guardian.com",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.email = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Fathers Name',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.email = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Current Address',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                  elevation: 3.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      maxLines: 1,
                      onChanged: (text) {
                        setState(() {
                          // this.email = text;
                          // print(this.email);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'City',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                    elevation: 3.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF6F6F6),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        maxLines: 1,
                        onChanged: (text) {
                          setState(() {
                            // this.email = text;
                            // print(this.email);
                          });
                        },
                      ),
                    )),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Linkedin',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Card(
                    elevation: 3.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF6F6F6),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        maxLines: 1,
                        onChanged: (text) {
                          setState(() {
                            // this.email = text;
                            // print(this.email);
                          });
                        },
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Submit".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return;
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
        ));
  }
}
