import 'package:flutter/material.dart';
import 'package:praime_home/view/service_reservation/service_reservation.dart';
import '../../controller/components/components.dart';
import '../../controller/components/widgets/containerCard.dart';
import '../../controller/components/widgets/customproject.dart';
import '../generalConstruction/generalconstruction.dart';
import '../../res.dart';

class ServiceDetails extends StatelessWidget {
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
              GeneralConstructionScreen(),
            ),
          ),
        ),
        title: Text(
          'البناء العام',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
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
                'خدمة السباكه',
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
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'مشاريعنا',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customProject(
                    image: Res.pexels_henry,
                    text: 'متحف باريس',
                    text2:
                        'هذا النص هو مثال لنص يمكن أن يستبدل في المزيد نفس المساحة لقد تم توليد هذا النص من',
                  ),
                  customProject(
                    image: Res.pexels_marina,
                    text: 'صرف برج النيل',
                    text2:
                        'هذا النص هو مثال لنص يمكن أن يستبدل في المزيد نفس المساحة لقد تم توليد هذا النص من',
                  ),
                ],
              ),
              SizedBox(height: 30),
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
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => navigateTo(
                      context,
                      ServiceReservationScreen(),
                    ),
                    child: Container(
                      width: 152,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'حجز طلب معاينه',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
