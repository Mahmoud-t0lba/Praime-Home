import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../controller/components/components.dart';
import '../../controller/components/widgets/customcontainer.dart';
import '../../controller/components/widgets/customproject.dart';
import '../generalConstruction/generalconstruction.dart';
import '../service/servicescreen.dart';
import '../../res.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 13),
          child: IconButton(
            icon: Image.asset(
              Res.notification,
            ),
            onPressed: () {},
          ),
        ),
        title: SizedBox(
          height: 45,
          width: 41,
          child: Image.asset(
            Res.login,
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 37, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              textAlign: TextAlign.right,
              autocorrect: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                icon: IconButton(
                  icon: Image.asset(
                    Res.filter,
                    width: 40,
                    height: 40,
                  ),

                  
                  // TODO-lang
                  onPressed: () {
                    if (context.locale.languageCode == "en")
                      context.setLocale(Locale("ar", "EG"));
                    else
                      context.setLocale(Locale("en", "US"));
                  },
                ),
                hintText: 'ابحث عن خدمه محدده',
                hintStyle: TextStyle(fontSize: 16),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // TODO-lang
            Text(
              tr("ourServices"),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customContainer(
                        image: Res.renovation,
                        text: 'ترميم المنازل',
                      ),
                      customContainer(
                        image: Res.roof,
                        text: 'تسقيف حديدى',
                      ),
                      GestureDetector(
                        onTap: () => navigateTo(
                          context,
                          GeneralConstructionScreen(),
                        ),
                        child: customContainer(
                          image: Res.home,
                          text: 'البناء العام',
                        ),
                      ),
                      customContainer(
                        image: Res.building,
                        text: 'بناء المشروعات',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customContainer(
                        image: Res.eco_house,
                        text: 'خدمات الكهرباء',
                      ),
                      customContainer(
                        image: Res.maintenance,
                        text: 'صيانه المنزل',
                      ),
                      customContainer(
                        image: Res.roof,
                        text: 'عمل الارضيات',
                      ),
                      customContainer(
                        image: Res.notification,
                        text: 'استشارات البناء',
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
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.51 / 2,
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                ),
                padding: EdgeInsets.all(20),
                children: [
                  customProject(
                    image: Res.pic1,
                    text: 'برج السلام',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  GestureDetector(
                    onTap: () => navigateTo(context, serviceScreen()),
                    child: customProject(
                      image: Res.pic2,
                      text: 'الحي المصري',
                      text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                    ),
                  ),
                  customProject(
                    image: Res.pic3,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic4,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic1,
                    text: 'برج السلام',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  GestureDetector(
                    onTap: () => navigateTo(context, serviceScreen()),
                    child: customProject(
                      image: Res.pic2,
                      text: 'الحي المصري',
                      text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                    ),
                  ),
                  customProject(
                    image: Res.pic3,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic4,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic1,
                    text: 'برج السلام',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  GestureDetector(
                    onTap: () => navigateTo(context, serviceScreen()),
                    child: customProject(
                      image: Res.pic2,
                      text: 'الحي المصري',
                      text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                    ),
                  ),
                  customProject(
                    image: Res.pic3,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic4,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic1,
                    text: 'برج السلام',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  GestureDetector(
                    onTap: () => navigateTo(context, serviceScreen()),
                    child: customProject(
                      image: Res.pic2,
                      text: 'الحي المصري',
                      text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                    ),
                  ),
                  customProject(
                    image: Res.pic3,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
                  ),
                  customProject(
                    image: Res.pic4,
                    text: 'استشاره فنيه',
                    text2: 'هذا النص هو مثال لنص يمكن أن يستبدل في',
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
