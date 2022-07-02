class videoContent {
  String image;
  String name;
  String title;
  String videoTime;
  String redDot_icon;
  String level;
  String heart_icon;
  String likes;
  String eye_icon;
  String views;

  videoContent({required this.image, required this.name, required this.title, required this.videoTime,
    required this.redDot_icon, required this.level, required this.heart_icon, required this.likes,
    required this.eye_icon, required this.views });
}

List<videoContent> videoContents = [
  videoContent(
    name: 'Kaleigh Cohen',
    image: 'assets/images/trainer2.png',
    title: "Indoor Cycling Workout", videoTime: '30 min',
    redDot_icon: "assets/images/dot.png", level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '4',
    eye_icon: 'assets/images/eye.png', views: '6',
  ),
  videoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer2.png',
    title: "SPIN CLASS- THE ULTIMATE...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '2',
    eye_icon: 'assets/images/eye.png', views: '7',
  ),
  videoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer1.png',
    title: "SPIN CLASS- TOMB RAIDER...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '4',
    eye_icon: 'assets/images/eye.png', views: '11',
  ),
  videoContent(
    name: 'Kaleigh Chohen',
    image: 'assets/images/trainer1.png',
    title: "Biginner Indoor Cycling W...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '6',
    eye_icon: 'assets/images/eye.png', views: '10',
  ),
  videoContent(
    name: 'Spin Junkies',
    image: 'assets/images/trainer2.png',
    title: "HIP HOP SPIN CLASS for BE...", videoTime: '45 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '8',
    eye_icon: 'assets/images/eye.png', views: '8',
  ),
  videoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer1.png',
    title: "SPIN CLASS- FULL THROTTL...", videoTime: '20 min',
    redDot_icon: "assets/images/dot.png", level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '9',
    eye_icon: 'assets/images/eye.png', views: '14',
  ),
  videoContent(
    name: 'Kaleigh Chohen',
    image: 'assets/images/trainer2.png',
    title: "Fat Burning Indoor Cycling...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '7',
    eye_icon: 'assets/images/eye.png', views: '12',
  ),
  videoContent(
    name: 'Gabriella Gabriella',
    image: 'assets/images/trainer2.png',
    title: "Introduction to Rhythm Cy...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '5',
    eye_icon: 'assets/images/eye.png', views: '8',
  ),
  videoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer1.png',
    title: "SPIN CLass- tabata hiit-...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '3',
    eye_icon: 'assets/images/eye.png', views: '10',
  ),
  videoContent(
    name: 'Gabriella Gabriella',
    image: 'assets/images/trainer1.png',
    title: "Minute Rhythm Cycling Cl...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '1',
    eye_icon: 'assets/images/eye.png', views: '9',
  ),
];

class savedVideoContent{
  String image;
  String name;
  String title;
  String videoTime;
  String redDot_icon;
  String level;
  String heart_icon;
  String likes;
  String eye_icon;
  String views;

  savedVideoContent({required this.image,required this.name,
    required this.title, required this.videoTime,required this.redDot_icon,
    required this.level,required this.heart_icon,required this.likes,
    required this.eye_icon,required this.views});

}
List<savedVideoContent> savedContents = [

  savedVideoContent(
    name: 'Kaleigh Cohen',
    image: 'assets/images/trainer2.png',
    title: "Indoor Cycling Workout", videoTime: '30 min',
    redDot_icon: "assets/images/dot.png", level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '4',
    eye_icon: 'assets/images/eye.png', views: '6',
  ),
  savedVideoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer1.png',
    title: "SPIN CLASS- THE ULTIMATE...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '2',
    eye_icon: 'assets/images/eye.png', views: '7',
  ),
  savedVideoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer2.png',
    title: "SPIN CLASS- TOMB RAIDER...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '4',
    eye_icon: 'assets/images/eye.png', views: '11',
  ),
  savedVideoContent(
    name: 'Kaleigh Chohen',
    image: 'assets/images/trainer1.png',
    title: "Biginner Indoor Cycling W...", videoTime: '20 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '6',
    eye_icon: 'assets/images/eye.png', views: '10',
  ),
  savedVideoContent(
    name: 'Spin Junkies',
    image: 'assets/images/trainer1.png',
    title: "HIP HOP SPIN CLASS for BE...", videoTime: '45 min',
    redDot_icon: 'assets/images/dot.png', level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '8',
    eye_icon: 'assets/images/eye.png', views: '8',
  ),
  savedVideoContent(
    name: 'Kirsten Allen',
    image: 'assets/images/trainer2.png',
    title: "SPIN CLASS- FULL THROTTL...", videoTime: '20 min',
    redDot_icon: "assets/images/dot.png", level: 'Intermediate',
    heart_icon: 'assets/images/heart.png', likes: '9',
    eye_icon: 'assets/images/eye.png', views: '14',
  ),

];