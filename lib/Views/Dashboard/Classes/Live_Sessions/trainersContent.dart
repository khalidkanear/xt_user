class trainerContent {
  String image;
  String name;
  String discription;
  String star_icon;

  trainerContent({required this.image, required this.name, required this.discription, required this.star_icon});
}

List<trainerContent> contents = [
  trainerContent(
      name: 'Gabriella Gabriella',
      image: 'assets/images/trainer1.png',
      discription: "4.1", star_icon: 'assets/images/star.png',
  ),
  trainerContent(
      name: 'Kaleigh Chohen',
      image: 'assets/images/trainer1.png',
      discription: "1", star_icon: 'assets/images/star.png',
  ),
  trainerContent(
      name: 'Kirsten Allen',
      image: 'assets/images/trainer1.png',
      discription: "5", star_icon: 'assets/images/star.png',
  ),
  trainerContent(
      name: 'Spain Junkies',
      image: 'assets/images/trainer1.png',
      discription: "4.5", star_icon: 'assets/images/star.png',
  ),
  trainerContent(
      name: 'Mark Ireland',
      image: 'assets/images/trainer1.png',
      discription: "4.1", star_icon: 'assets/images/star.png',
  ),
];