class School {
  final String name;
  final int rating;
  final String email;
  final String phoneNo;
  final String image;
  final String aboutUs;
  final String city;

  School(
      {this.name,
      this.rating,
      this.email,
      this.phoneNo,
      this.aboutUs,
      this.city,
      this.image});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      name: json['name'],
      rating: json['rating'],
      email: json['email'],
      phoneNo: json['phoneNo'],
      aboutUs: json['aboutUs'],
      city: json['city'],
      image: json['image'],
    );
  }
}
