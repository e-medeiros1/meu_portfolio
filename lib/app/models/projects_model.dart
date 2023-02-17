// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectsModel {
  final int id;
  final String title;
  final String description;
  final String image;
  ProjectsModel({
    required this.id,
    required this.image,
    required this.description,
    required this.title,
  });

}
  List<ProjectsModel> myProjects = [
        ProjectsModel(
      image: 'assets/images/ruinedKingdom.png',
      description: 'Um jogo feito em flutter utilizando o package Bonfire baseado no gênero Soulslike',
      title: 'Ruined Kingdom',
      id: 1,
    ),
    ProjectsModel(
      image: 'assets/images/soSaladas.png',
      description: 'Delivery app de saladas com interface intuitiva',
      title: 'Só Saladas',
      id: 2,
    ),

    ProjectsModel(
      image: 'assets/images/exclusiveDiary.png',
      description: 'Faça anotações sobre seu dia de forma fácil',
      title: 'Exclusive Diary',
      id: 3,
    ),
    ProjectsModel(
      image: 'assets/images/vakinhaBurger.png',
      description: 'Delivery app de lanches com pix integrado',
      title: 'Vakinha Burguer',
      id: 4,
    ),
  ];
