class UserFollowModel {
  final String name;
  final String image;
  final String desc;

  UserFollowModel({required this.name, this.desc = '', required this.image});
}

List<UserFollowModel> userFollowModelist = [
  UserFollowModel(
      name: 'Dr. Ayush Kumar ',
      image: 'assets/images/person.png',
      desc: 'once upon a time there wonce upon a '),
  UserFollowModel(
      name: 'Kevin',
      image: 'assets/images/doctor.png',
      desc: 'once upon a time there w'),
  UserFollowModel(
      name: 'Sonu',
      image: 'assets/images/doctor1.png',
      desc: 'once upon a time there w'),
  UserFollowModel(
      name: 'Kripa',
      image: 'assets/images/navImages/shortvideo.png',
      desc: 'once upon a time there w'),
  UserFollowModel(
      name: 'Ajay',
      image: 'assets/images/navImages/upcommingcons.png',
      desc: 'once upon a time there w'),
  UserFollowModel(
      name: 'Neha',
      image: 'assets/images/navImages/recenthottopic.png',
      desc: 'once upon a time there w'),
  UserFollowModel(
      name: 'Dr.Sunil',
      image: 'assets/images/navImages/makefriend.png',
      desc: 'once upon a time there w'),
  UserFollowModel(
      name: 'Santosh',
      image: 'assets/images/navImages/help.png',
      desc: 'once upon a time there w'),
];
