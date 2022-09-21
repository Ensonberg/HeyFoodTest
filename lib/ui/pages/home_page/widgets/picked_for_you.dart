import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickedForYou extends StatelessWidget {
  const PickedForYou({GlobalKey? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    return Container(
      key: key,
      color: Colors.white,
      height: data.size.height / 1.6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Picked For you",
              style: TextStyle(
                  fontSize: 20,
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
                          "Two Egg SandWish",
                          style: TextStyle(
                              fontSize: 12,
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
                          "Two Egg SandWish",
                          style: TextStyle(
                              fontSize: 12,
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
                          "Two Egg SandWish",
                          style: TextStyle(
                              fontSize: 12,
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
                          "Two Egg SandWish",
                          style: TextStyle(
                              fontSize: 12,
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
                          "Two Egg SandWish",
                          style: TextStyle(
                              fontSize: 12,
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
                          "Two Egg SandWish",
                          style: TextStyle(
                              fontSize: 12,
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
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
