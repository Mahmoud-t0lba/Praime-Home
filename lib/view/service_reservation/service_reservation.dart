import 'package:flutter/material.dart';
import '../../controller/components/widgets/customtextform.dart';
import '../splash/FainalScreen/fainallscreen.dart';
import '../../controller/components/components.dart';
import '../generalConstruction/generalconstruction.dart';
import '../../res.dart';

class ServiceReservationScreen extends StatefulWidget {
  @override
  State<ServiceReservationScreen> createState() =>
      _ServiceReservationScreenState();
}

class _ServiceReservationScreenState extends State<ServiceReservationScreen> {
  var Checkbox0 = false;
  CheckboxChange0(bool val) {
    setState(
      () => Checkbox0 = val,
    );
  }

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
                'حجز طلب معاينه',
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
              CustomTextFormField(
                hint: 'الاسم بالكامل',
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hint: 'العنوان',
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hint: 'رقم الهاتف',
              ),
              SizedBox(height: 30),
              Text(
                'ميعاد المعاينه',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CheckboxRow(),
                  CheckboxRow(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CheckboxRow(),
                  CheckboxRow(),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => navigateAndFinish(
                      context,
                      FainalScreen(),
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

  Widget CheckboxRow() => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'الخميس الساعه 5',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Checkbox(
              value: Checkbox0,
              onChanged: null,
            ),
          ],
        ),
      );
}
