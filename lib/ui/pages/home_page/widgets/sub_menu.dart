import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../food_detail_page.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
                child: Container(
              height: 2,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.grey),
            )),
            Text(
              "Leo's Bagels",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "     ★ 4.8(500+ratings).Breakfast and Brunch",
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.w600),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FoodDetailPage()));
              },
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 0,
              minLeadingWidth: 2,
              dense: true,
              trailing: Icon(CupertinoIcons.forward),
              leading: Text(
                "🥉",
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.w600),
              ),
              title: Text(
                "Open until 2:30Pm",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Tap for hours address, and more",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              height: 35,
              width: size,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.2)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Container(
                      width: size * 0.45,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "45-55min-\$1.49",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size * 0.45,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.transparent),
                      child: Column(
                        children: [
                          Text(
                            "Pickup",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "45-55min-\$1.49",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 20,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.2)),
              child: Row(
                children: [
                  const Icon(
                    Icons.person_add_alt_rounded,
                    size: 16,
                  ),
                  Text(
                    "Group Order",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Day Menu",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.w400),
                ),
                const Icon(
                  CupertinoIcons.search,
                  size: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
