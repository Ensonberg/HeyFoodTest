import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'google_map_widget.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: SizedBox(
            height: 80,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/salad.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconWidget(iconData: Icons.arrow_back),
                      Row(
                        children: const [
                          IconWidget(iconData: CupertinoIcons.heart),
                          SizedBox(
                            width: 5,
                          ),
                          IconWidget(iconData: Icons.more_horiz_rounded),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        GoogleMapWidget(
          height: 150,
          showBackBtn: false,
        ),
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  final IconData iconData;
  const IconWidget({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: Colors.white,
      child: Icon(
        iconData,
        color: Colors.black,
        size: 15,
      ),
    );
  }
}
