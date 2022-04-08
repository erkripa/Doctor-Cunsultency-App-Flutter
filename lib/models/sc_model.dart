class SCModel {
  int? id;
  String? imagPath;
  String? title;

  SCModel({this.id,this.imagPath, this.title});

  SCModel.fromJson(Map<String, dynamic> json) {
    id= json['id'];
    imagPath = json['image_path'];
    title = json['title'];
  }

}

List<SCModel> scModelList = [
  SCModel(
    imagPath: "assets/images/superCategory/beauty.jpg",
    title: "Beauty",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/business.jpg",
    title: "Business & Entreprenership",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/diet.jpg",
    title: "Diet",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/education.jpg",
    title: "Education",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/fashion.jpg",
    title: "Fashion Designing ",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/fitness.jpg",
    title: "Fitness ",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/healthcare.jpg",
    title: "Healthcare ",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/house.jpg",
    title: "House Services",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/hr.jpg",
    title: "Human Resources ",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/legal.jpg",
    title: "Legal ",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/mother.jpg",
    title: "Mother & Baby Care ",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/personal.jpg",
    title: "Personal",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/relationship.jpg",
    title: "Relationship",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/technology.jpg",
    title: "Technology",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/relationship.jpg",
    title: "Training",
  ),
  SCModel(
    imagPath: "assets/images/superCategory/youtube.jpg",
    title: "Youtube",
  ),
];
