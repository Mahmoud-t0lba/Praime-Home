import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../../controller/components/components.dart';
import '../../controller/components/widgets/contaierImage.dart';
import '../../controller/components/widgets/containerCard.dart';
import '../home/home.dart';
import '../../res.dart';

class serviceScreen extends StatelessWidget {
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
          'اعمالنا',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 30),
              Text(
                'خدماتنا',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
                maxLines: 2,
                overflow: TextOverflow.clip,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'صور من المشروع',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    contaierImage(),
                    contaierImage(),
                    contaierImage(),
                    contaierImage(),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Text(
                  'راي العملاء',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              ContainerCard(),
            ],
          ),
        ),
      ),
    );
  }
}
