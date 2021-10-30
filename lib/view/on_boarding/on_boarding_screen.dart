import 'package:flutter/material.dart';
import '../../controller/styles/colors.dart';
import '../../res.dart';
import '../login/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controller/components/components.dart';
import '../../controller/network/local/cache_helper.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: Res.onboard_1,
      title: 'محتاج بيت من غير تفكير؟',
      body:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
    ),
    BoardingModel(
      image: Res.onboard_2,
      title: 'عندك شقه محتاج تشطبها؟',
      body:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
    ),
    BoardingModel(
      image: Res.onboard_3,
      title: 'ده كله عندنا في برايم هوم',
      body:
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
    ),
  ];

  bool isLast = false;

  void submit() {
    CacheHelper.saveData(
      key: 'onBoarding',
      value: true,
    ).then((value) {
      if (value) {
        navigateAndFinish(
          context,
          LoginScreen(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     TextButton(
      //       onPressed: submit,
      //       child:   Text(
      //         'skip',
      //         style: TextStyle(
      //           fontSize: 22,
      //           color: Color.fromARGB(0, 36, 62, 63),
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: praimColor,
                    dotHeight: 10,
                    expansionFactor: 1.1,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                  count: boarding.length,
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      width: 75,
                      height: 31,
                      decoration: BoxDecoration(
                        color: praimColor,
                      ),
                      child: Center(
                        child: Text(
                          'التالي',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (isLast) {
                          submit();
                        } else {
                          boardController.nextPage(
                            duration: Duration(
                              milliseconds: 1100,
                            ),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        }
                      },
                      child: Text(''),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          Text(
            model.title,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            model.body,
            style: TextStyle(
              fontSize: 23.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      );
}
