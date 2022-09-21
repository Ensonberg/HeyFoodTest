import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page/widgets/google_map_widget.dart';

class FoodDetailPage extends StatefulWidget {
  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoogleMapWidget(
            height: 200,
            showBackBtn: true,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Leo's Bagels",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  "Break Fast and Brunch. Sandwich .Salads. Desserts.Healthy .Group Friendly ",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 25,
                  ),
                  dense: true,
                  title: Text(
                    "3 Hanover Square , New York, Ny 10004",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons.copy_sharp,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.access_time_filled_sharp,
                    color: Colors.black,
                    size: 25,
                  ),
                  dense: true,
                  title: Text(
                    "Open until 2:30 pm",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    "🥉",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                  dense: true,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Overall",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "One of the best spot for Uber Eats",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    CupertinoIcons.forward,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                const Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.star,
                    color: Colors.black,
                    size: 25,
                  ),
                  dense: true,
                  title: Text(
                    "4.8(500+ ratings)",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
