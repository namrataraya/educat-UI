class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent({ required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    image: 'images/1.png', 
     title: 'Explore your new skill today',
    description: 'New skills are diversified your job options and help you to keep up with the fast-changing world'
    ),
    UnbordingContent(
    image: 'images/2.png', 
     title: 'Learn Everywhere',
    description: 'Develop valueable skill anytime, anywhere',
    ),
    UnbordingContent(
    image: 'images/3.png', 
     title: 'Safe & Secure',
    description: 'Payment, courses are insecure Your information is safe!',
    )

];
