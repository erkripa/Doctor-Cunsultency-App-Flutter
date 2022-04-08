class MentorModel {
  final String title;
  final String image;
  final String desc;

  MentorModel({required this.title, this.desc = '', required this.image});
}

List<MentorModel> mentorModelist = [
  MentorModel(
      title: 'Ayush',
      image: 'assets/images/person.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Kevin',
      image: 'assets/images/doctor.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Sonu',
      image: 'assets/images/doctor1.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Kripa',
      image: 'assets/images/navImages/shortvideo.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Ajay',
      image: 'assets/images/navImages/upcommingcons.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Neha',
      image: 'assets/images/navImages/recenthottopic.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Dr.Sunil',
      image: 'assets/images/navImages/makefriend.png',
      desc: 'once upon a time there w'),
  MentorModel(
      title: 'Santosh',
      image: 'assets/images/navImages/help.png',
      desc: 'once upon a time there w'),
];
