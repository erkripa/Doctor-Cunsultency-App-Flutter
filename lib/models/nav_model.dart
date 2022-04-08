class NavModel {
  final String title;
  final String image;

  NavModel({required this.title, required this.image});
}

List<NavModel> navModeList = [
  NavModel(
    title: 'About Selfey.com',
    image: 'assets/images/navImages/about.png',
  ),
  NavModel(
    title: 'Find Mentors',
    image: 'assets/images/navImages/findmentor.png',
  ),
  NavModel(
    title: 'Featured Mentors',
    image: 'assets/images/navImages/featurmentor.png',
  ),
  NavModel(
    title: 'Short Video',
    image: 'assets/images/navImages/shortvideo.png',
  ),
  NavModel(
    title: 'Upcoming Consultations',
    image: 'assets/images/navImages/upcommingcons.png',
  ),
  NavModel(
    title: 'RecentHot Topics',
    image: 'assets/images/navImages/recenthottopic.png',
  ),
  NavModel(
    title: 'Make Friends',
    image: 'assets/images/navImages/makefriend.png',
  ),
  NavModel(
    title: 'Help',
    image: 'assets/images/navImages/help.png',
  ),
];
