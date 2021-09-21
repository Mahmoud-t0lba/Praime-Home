import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../../controller/components/components.dart';
import '../../controller/components/widgets/customcontainer.dart';
import '../../controller/components/widgets/customproject.dart';
import '../home/home.dart';
import '../service_details/servicedetails.dart';
import '../../res.dart';

class GeneralConstructionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: IconButton(
            icon: Image.asset(
              Res.back,
            ),
            onPressed: () => navigateAndPop(
              context,
              HomeScreen(),
            ),
          ),
        ),
        title: Text(
          'البناء العام',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: IconButton(
              icon: Image.asset(Res.drawer),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 37, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 30),
            Text(
              'خدمات البناء العام',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
              overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.rtl,
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customContainer(
                        image: Res.air_conditioner,
                        text: 'التكييف',
                      ),
                      customContainer(
                        image: Res.maintenance,
                        text: 'كهرباء',
                      ),
                      customContainer(
                        image: Res.maintenance,
                        text: 'نجاره',
                      ),
                      GestureDetector(
                        onTap: () => navigateTo(
                          context,
                          ServiceDetails(),
                        ),
                        child: customContainer(
                          image: Res.plumber,
                          text: 'سباكه',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      customContainer(
                        image: Res.maintenance,
                        text: 'جميع الخدمات',
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'المزيد',
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'احدث مشاريعنا',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.51 / 2,
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                ),
                padding: EdgeInsets.all(20),
                children: [
                  customProject(
                    image: Res.pic5,
                    text: 'نجاره برج النيل',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  GestureDetector(
                    child: customProject(
                      image: Res.pic6,
                      text: 'متحف باريس',
                      text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                    ),
                  ),
                  customProject(
                    image: Res.pic7,
                    text: '',
                    text2: '',
                  ),
                  customProject(
                    image: Res.pic8,
                    text: '',
                    text2: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
