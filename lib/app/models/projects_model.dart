// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectsModel {
  final int id;
  final String title;
  final String category;
  final String image;
  ProjectsModel({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
  });

  List<ProjectsModel> myProjects = [
    ProjectsModel(
      image: '',
      category: 'Flutter mobile aplication',
      title: 'Só Saladas',
      id: 1,
    ),
    ProjectsModel(
      image: '',
      category: 'Flutter game',
      title: 'Ruined Kingdom',
      id: 2,
    ),
    ProjectsModel(
      image: '',
      category: 'Flutter mobile aplication',
      title: 'Exclusive Diary',
      id: 3,
    ),
    ProjectsModel(
      image: '',
      category: 'Flutter mobile aplication',
      title: 'FIFA WORLD CUP album manager',
      id: 4,
    ),
  ];
}
