// ignore_for_file: public_member_api_docs, sort_constructors_first
class StacksModel {
  int id;
  String image;
  String title;
  StacksModel({
    required this.id,
    required this.image,
    required this.title,
  });
}

List<StacksModel> stacksModel = [
  StacksModel(id: 1, image: 'assets/images/flutter.png', title: 'Flutter'),
  StacksModel(id: 2, image: 'assets/images/dart.png', title: 'Dart'),
  StacksModel(id: 3, image: 'assets/images/firebase.png', title: 'Firebase'),
  // StacksModel(
  //     id: 4, image: 'assets/images/firestore.png', title: 'Cloud Firestore'),
  StacksModel(id: 4, image: 'assets/images/git.png', title: 'Git'),
  StacksModel(id: 6, image: 'assets/images/github2.png', title: 'Github'),
];
