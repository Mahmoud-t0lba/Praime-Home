import 'package:flutter/material.dart';

import '../../../res.dart';

Widget ContainerCard() => Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Container(
        width: 330,
        height: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.white,
                offset: Offset(1, 3),
              )
            ]),
        child: Row(
          children: [
            IconButton(
              icon: Image.asset(
                Res.back,
              ),
              onPressed: () {},
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Monkey D. Luffy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          Res.luffy,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 166,
                  child: Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Image.asset(
                Res.forward,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
