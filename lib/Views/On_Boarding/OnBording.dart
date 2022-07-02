class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Welcome',
      image: 'assets/images/jump.png',
      discription: "Buckle up for an unmatched personal training experience\n with our highly qualified instructors."
  ),
  UnbordingContent(
      title: 'Ride with us',
      image: 'assets/images/bycycle.png',
      discription: "Virtual fitness training was a fun-filled experience for me.\n  "
  ),
  UnbordingContent(
      title: 'Reward surprises',
      image: 'assets/images/gym.png',
      discription: "Sign up for our classes and let us handle all your fitness\n issues. Make Xstream your new fitness partner. "
  ),
  UnbordingContent(
      title: 'Track your Fitness',
      image: 'assets/images/watch.png',
      discription: "Xstream enables you to keep track of your fitness activities\n and scheduled sessions."
  ),
];