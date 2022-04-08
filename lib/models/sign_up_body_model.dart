// class SignUpBody {
//   final String fName;
//   final String mName;
//   final String lName;
//   final String email;
//   final String phone;
//   final String password;
//   final String gender;

//   SignUpBody({
//     required this.fName,
//     required this.mName,
//     required this.lName,
//     required this.email,
//     required this.phone,
//     required this.password,
//     required this.gender,
//   });

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> data = Map<String, dynamic>();
//     data["f_name"] = this.fName;
//     data["m_name"] = this.mName;
//     data["l_name"] = this.lName;
//     data["email"] = this.email;
//     data["phone"] = this.phone;
//     data["password"] = this.password;
//     data["gender"] = this.gender;
//     return data;
//   }
// }

class SignUpBody {
  final String fName;
  final String mName;
  final String lName;
  final String email;
  final String phone;
  final String password;
  final String gender;

  SignUpBody({
    required this.fName,
    required this.mName,
    required this.lName,
    required this.email,
    required this.phone,
    required this.password,
    required this.gender,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data["f_name"] = this.fName;

    data["email"] = this.email;
    data["phone"] = this.phone;
    data["password"] = this.password;

    return data;
  }
}
