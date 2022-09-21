import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BagelsAndBreadWidget extends StatelessWidget {
  final String title;
  const BagelsAndBreadWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    return Container(
      key: key,
      color: Colors.white,
      height: data.size.height / 1.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontWeight: FontWeight.w800),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing: Image.asset("assets/images/bread.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The BEGA",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$4.95",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Two eggs bacon,cheddar,avocado \nmash ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Text(
                              "popular",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing: Image.asset("assets/images/bread.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The BEGA",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$4.95",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Two eggs bacon,cheddar,avocado \nmash ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing: Image.asset("assets/images/bread.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The BEGA",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$4.95",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Two eggs bacon,cheddar,avocado \nmash ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing: Image.asset("assets/images/bread.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The BEGA",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$4.95",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Two eggs bacon,cheddar,avocado \nmash ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing: Image.asset("assets/images/bread.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The BEGA",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$4.95",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Two eggs bacon,cheddar,avocado \nmash ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
