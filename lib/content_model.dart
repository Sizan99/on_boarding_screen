class OnbordingContent {
  String image;
  String title;
  String description;
  double height;
  double width;

  OnbordingContent(
      {required this.image,
      required this.title,
      required this.description,
      required this.height,
      required this.width});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      title: 'Numerous free\ntrial courses',
      image: 'asset/onboarding1.png',
      height: 264,
      width: 268,
      description: "Free courses for you to \nfind your way to learning"),
  OnbordingContent(
      title: 'Quick and easy \nlearning',
      image: 'asset/onboarding2.png',
      height: 264,
      width: 335,
      description:
          "Easy and fast learning at \nany time to help you \nimprove various skills"),
  OnbordingContent(
      title: 'Create your own \nstudy plan',
      image: 'asset/onboarding3.png',
      height: 264,
      width: 334,
      description:
          "Study according to the \nstudy plan, make study \nmore motivated"),
];
