import 'package:flutter/material.dart';
import 'package:furnitureapp/pages/view/page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  BoardingModel({@required this.image});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var onBoardController = PageController();
  List<BoardingModel> onBoarding = [
    BoardingModel(image: 'assets/ch1.jpg'),
    BoardingModel(image: 'assets/ca1.jpg'),
    BoardingModel(image: 'assets/s1.jpg'),
    BoardingModel(image: 'assets/l1.webp'),
  ];
  bool lastBoard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (int index) {
              if (index == onBoarding.length - 1) {
                setState(() {
                  lastBoard = true;
                });
              } else {
                setState(() {
                  lastBoard = false;
                });
              }
            },
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                buildBoardingItem(onBoarding[index]),
            itemCount: onBoarding.length,
            controller: onBoardController,
          ),
        ),
      ],
    ));
  }

  Widget buildBoardingItem(BoardingModel model) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Column(
          children: [
            Container(
              height: screenHeight / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(500),
                ),
                image: DecorationImage(
                    image: AssetImage('${model.image}'), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: onBoardController,
              count: onBoarding.length,
              effect: SlideEffect(
                radius: 8,
                activeDotColor: Colors.black38,
                dotColor: Colors.grey[300],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Furniture App',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem Ipsum is simply dummy text\nof the printing and typesetting\nindustry.',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                if (lastBoard) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageOne(),
                    ),
                  );
                } else {
                  onBoardController.nextPage(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn);
                }
              },
              child: Text(
                'Get Started',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                onPrimary: Colors.white,
                padding: EdgeInsets.all(18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
