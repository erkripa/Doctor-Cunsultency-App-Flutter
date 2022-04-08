class SpecialistModel {
  final String? image;
  final String? name;
  final String? ctegory;
  final int? experience;
  final int? likes;
  final int? stories;
  final String? location;
  final String? hospitalName;
  final int? fees;
  final String? availableTime;

  SpecialistModel({
    this.image,
    this.name,
    this.ctegory,
    this.experience,
    this.likes,
    this.stories,
    this.location,
    this.hospitalName,
    this.fees,
    this.availableTime,
  });
}

List<SpecialistModel> specilistModelList = [
  SpecialistModel(
      image: 'assets/images/person.png',
      name: 'Dr Srinivas Rao',
      ctegory: 'Dentist',
      experience: 25,
      likes: 88,
      stories: 33,
      location: 'Bellandur',
      hospitalName: 'The Eye Foundation Super Eye Hospital',
      fees: 500,
      availableTime: '11 30 Am, 28 Mar'),
  SpecialistModel(
    image: 'assets/images/profile.jpg',
    name: 'Dr Arvind G .M',
    ctegory: 'General Physician',
    experience: 21,
    likes: 96,
    stories: 39,
    location: 'Jaynagr 9 Block',
    hospitalName: 'Manipal Hospital',
    fees: 700,
    availableTime: '10 30 Am, 29 Mar',
  ),
  SpecialistModel(
    image: 'assets/images/doctor.png',
    name: 'Dr Sunita BL',
    ctegory: 'General Surgen',
    experience: 26,
    likes: 87,
    stories: 29,
    location: 'Sarajpur Road 3 Block',
    hospitalName: 'Apolo Clinic',
    fees: 300,
    availableTime: '12 30 Pm, 30 Mar',
  ),
];
