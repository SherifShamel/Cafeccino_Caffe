class OnbordingModel {

  final String image;
  final String txt;
  final String desc;
  final String buttonText1;
  final String buttonText2;


  OnbordingModel( {
    required this.txt,
    required this.image,
    required this.desc,
    required this.buttonText1,
    required this.buttonText2,


  });

}

List<OnbordingModel> onbordings=[
  OnbordingModel(image: "assets/Chef cooking.png",
      txt: "Welcome to the most tastiest app",
      desc: "You know, this app is edible meaning you can eat and drink it!"
      ,buttonText1:"Next", buttonText2: 'Skip' ),
  OnbordingModel(image: "assets/4442828 1.png",
      txt: "A Commitment to Excellence, Served with Love",
   desc: "At our establishment, we are dedicated to providing a warm and welcoming experience for our patrons. Our staff takes great pride in serving every meal and beverage with a commitment to excellence and a dash of love"
      , buttonText1:"Next", buttonText2: 'Skip' ),
  OnbordingModel(image: "assets/4442829 2.png",
      txt: "Efficient and Timely Delivery Services",

    desc: "We prioritize swift and efficient service without sacrificing quality. Optimized delivery processes minimize disruption, enhancing the experience for customers and delivery personnel alike"
      , buttonText1:"Next", buttonText2: 'Skip' ),

];