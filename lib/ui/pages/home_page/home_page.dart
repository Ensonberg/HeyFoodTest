import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../keys.dart';
import 'widgets/body_widget.dart';
import 'widgets/sliver_app_bar_delegate.dart';
import 'widgets/sub_menu.dart';

class SliversExample extends StatefulWidget {
  @override
  _SliversExampleState createState() => _SliversExampleState();
}

class _SliversExampleState extends State<SliversExample>
    with TickerProviderStateMixin {
  late final sliverListtKey = GlobalKey();
  late RenderBox overRender;
  late RenderBox revRender;
  late RenderBox menuRender;
  late RenderBox contactRender;
  late RenderBox sliverRender;
  late ScrollController scrollController;
  late TabController _tabController;
  late TabController _topTabController;
  late double greenHeight;
  late double blueHeight;
  late double orangeHeight;
  late double yellowHeight;
  var isPinned = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
    _tabController = TabController(length: 4, vsync: this);
    _topTabController = TabController(length: 4, vsync: this);
    addScrollControllerListener();
    addPinnedListeners();
  }

  void addPinnedListeners() {
    scrollController.addListener(() {
      if (!isPinned &&
          scrollController.hasClients &&
          scrollController.offset > kToolbarHeight) {
        setState(() {
          isPinned = true;
        });
      } else if (isPinned &&
          scrollController.hasClients &&
          scrollController.offset < kToolbarHeight) {
        setState(() {
          isPinned = false;
        });
      }
    });
  }

  void addScrollControllerListener() {
    scrollController.addListener(() {
      if (greenKey.currentContext != null) {
        greenHeight = greenKey.currentContext!.size!.height;
      }
      if (blueKey.currentContext != null) {
        blueHeight = blueKey.currentContext!.size!.height;
      }
      if (orangeKey.currentContext != null) {
        orangeHeight = orangeKey.currentContext!.size!.height;
      }
      if (yellowKey.currentContext != null) {
        yellowHeight = yellowKey.currentContext!.size!.height;
      }
      if (scrollController.offset > greenHeight + 200 &&
          scrollController.offset < blueHeight + greenHeight + 200) {
      } else {}
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (scrollController.offset > 0 &&
            scrollController.offset < greenHeight + 200) {
          _tabController.animateTo(0);
        } else if (scrollController.offset > greenHeight + 200 &&
            scrollController.offset < blueHeight + greenHeight + 200) {
          _tabController.animateTo(1);
        } else if (scrollController.offset > blueHeight + greenHeight + 200 &&
            scrollController.offset <
                blueHeight + greenHeight + orangeHeight + 200) {
          _tabController.animateTo(2);
        } else if (scrollController.offset >
                blueHeight + greenHeight + orangeHeight + 200 &&
            scrollController.offset <=
                blueHeight + greenHeight + orangeHeight + yellowHeight + 200) {
          _tabController.animateTo(3);
        } else {}
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (scrollController.offset < greenHeight) {
          _tabController.animateTo(0);
        } else if (scrollController.offset > greenHeight &&
            scrollController.offset < blueHeight + greenHeight) {
          _tabController.animateTo(1);
        } else if (scrollController.offset > blueHeight + greenHeight &&
            scrollController.offset < blueHeight + greenHeight + orangeHeight) {
          _tabController.animateTo(2);
        } else if (scrollController.offset >
                blueHeight + greenHeight + orangeHeight &&
            scrollController.offset <
                blueHeight + greenHeight + orangeHeight + yellowHeight) {
          _tabController.animateTo(3);
        } else {}
      }
    });
  }

  void tabBarOnTap(val) {
    switch (val) {
      case 0:
        {
          if (greenKey.currentContext == null) {
            scrollController.position
                .ensureVisible(
              orangeKey.currentContext!.findRenderObject()!,
              alignment:
                  0.0, // How far into view the item should be scrolled (between 0 and 1).
              duration: const Duration(milliseconds: 200),
            )
                .then((value) {
              scrollController.position
                  .ensureVisible(
                orangeKey.currentContext!.findRenderObject()!,
                alignment:
                    0.0, // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position
                    .ensureVisible(
                  blueKey.currentContext!.findRenderObject()!,
                  alignment:
                      0.0, // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                )
                    .then((value) {
                  scrollController.position.ensureVisible(
                    greenKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.0, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(milliseconds: 200),
                  );
                });
              });
            });
          } else {
            scrollController.position.ensureVisible(
              greenKey.currentContext!.findRenderObject()!,
              alignment: 0.0,
              // How far into view the item should be scrolled (between 0 and 1).
              duration: const Duration(milliseconds: 800),
            );
          }
        }
        break;
      case 1:
        {
          if (blueKey.currentContext == null) {
            if (_tabController.previousIndex == 0) {
              scrollController.position
                  .ensureVisible(
                greenKey.currentContext!.findRenderObject()!,
                alignment: 0.0,
                // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position
                    .ensureVisible(
                  greenKey.currentContext!.findRenderObject()!,
                  alignment: 0.5,
                  // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                )
                    .then((value) {
                  scrollController.position.ensureVisible(
                    blueKey.currentContext!.findRenderObject()!,
                    alignment: 0.0,
                    // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(milliseconds: 200),
                  );
                });
              });
            } else {
              scrollController.position
                  .ensureVisible(
                orangeKey.currentContext!.findRenderObject()!,
                alignment: 0.5,
                // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position
                    .ensureVisible(
                  orangeKey.currentContext!.findRenderObject()!,
                  alignment: 0.0,
                  // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                )
                    .then((value) {
                  scrollController.position
                      .ensureVisible(
                    blueKey.currentContext!.findRenderObject()!,
                    alignment: 0.5,
                    // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(milliseconds: 200),
                  )
                      .then((value) {
                    scrollController.position.ensureVisible(
                      blueKey.currentContext!.findRenderObject()!,
                      alignment: 0.0,
                      // How far into view the item should be scrolled (between 0 and 1).
                      duration: const Duration(milliseconds: 200),
                    );
                  });
                });
              });
            }
          } else {
            scrollController.position.ensureVisible(
              blueKey.currentContext!.findRenderObject()!,
              alignment: 0.0,
              // How far into view the item should be scrolled (between 0 and 1).
              duration: const Duration(milliseconds: 400),
            );
          }
        }
        break;
      case 2:
        {
          if (orangeKey.currentContext == null) {
            if (_tabController.previousIndex == 0) {
              scrollController.position
                  .ensureVisible(
                greenKey.currentContext!.findRenderObject()!,
                alignment: 0.0,
                // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position
                    .ensureVisible(
                  greenKey.currentContext!.findRenderObject()!,
                  alignment: 0.5,
                  // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                )
                    .then((value) {
                  scrollController.position
                      .ensureVisible(
                    blueKey.currentContext!.findRenderObject()!,
                    alignment: 0.0,
                    // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(milliseconds: 200),
                  )
                      .then((value) {
                    scrollController.position
                        .ensureVisible(
                      blueKey.currentContext!.findRenderObject()!,
                      alignment: 0.5,
                      // How far into view the item should be scrolled (between 0 and 1).
                      duration: const Duration(milliseconds: 200),
                    )
                        .then((value) {
                      scrollController.position.ensureVisible(
                        orangeKey.currentContext!.findRenderObject()!,
                        alignment: 0.2,
                        // How far into view the item should be scrolled (between 0 and 1).
                        duration: const Duration(milliseconds: 200),
                      );
                    });
                  });
                });
              });
            } else if (_tabController.previousIndex == 1) {
              scrollController.position
                  .ensureVisible(
                blueKey.currentContext!.findRenderObject()!,
                alignment: 0.5,
                // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position.ensureVisible(
                  orangeKey.currentContext!.findRenderObject()!,
                  alignment: 0.2,
                  // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                );
              });
            }
          } else {
            scrollController.position.ensureVisible(
              orangeKey.currentContext!.findRenderObject()!,
              alignment: 0.0,
              // How far into view the item should be scrolled (between 0 and 1).
              duration: const Duration(milliseconds: 600),
            );
          }
        }
        break;
      case 3:
        {
          if (yellowKey.currentContext == null) {
            if (_tabController.previousIndex == 0) {
              scrollController.position
                  .ensureVisible(
                greenKey.currentContext!.findRenderObject()!,
                alignment:
                    0.0, // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position
                    .ensureVisible(
                  greenKey.currentContext!.findRenderObject()!,
                  alignment:
                      0.5, // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                )
                    .then((value) {
                  scrollController.position
                      .ensureVisible(
                    blueKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.0, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(milliseconds: 200),
                  )
                      .then((value) {
                    scrollController.position
                        .ensureVisible(
                      blueKey.currentContext!.findRenderObject()!,
                      alignment:
                          0.5, // How far into view the item should be scrolled (between 0 and 1).
                      duration: const Duration(milliseconds: 200),
                    )
                        .then((value) {
                      scrollController.position
                          .ensureVisible(
                        orangeKey.currentContext!.findRenderObject()!,
                        alignment:
                            0.0, // How far into view the item should be scrolled (between 0 and 1).
                        duration: const Duration(milliseconds: 200),
                      )
                          .then((value) {
                        scrollController.position
                            .ensureVisible(
                          orangeKey.currentContext!.findRenderObject()!,
                          alignment:
                              0.5, // How far into view the item should be scrolled (between 0 and 1).
                          duration: const Duration(milliseconds: 200),
                        )
                            .then((value) {
                          scrollController.position.ensureVisible(
                            yellowKey.currentContext!.findRenderObject()!,
                            alignment:
                                0.0, // How far into view the item should be scrolled (between 0 and 1).
                            duration: const Duration(milliseconds: 200),
                          );
                        });
                      });
                    });
                  });
                });
              });
            } else {
              scrollController.position
                  .ensureVisible(
                blueKey.currentContext!.findRenderObject()!,
                alignment:
                    1.0, // How far into view the item should be scrolled (between 0 and 1).
                duration: const Duration(milliseconds: 200),
              )
                  .then((value) {
                scrollController.position
                    .ensureVisible(
                  orangeKey.currentContext!.findRenderObject()!,
                  alignment:
                      0.0, // How far into view the item should be scrolled (between 0 and 1).
                  duration: const Duration(milliseconds: 200),
                )
                    .then((value) {
                  scrollController.position.ensureVisible(
                    yellowKey.currentContext!.findRenderObject()!,
                    alignment:
                        0.0, // How far into view the item should be scrolled (between 0 and 1).
                    duration: const Duration(milliseconds: 200),
                  );
                });
              });
            }
          } else {
            scrollController.position.ensureVisible(
              yellowKey.currentContext!.findRenderObject()!,
              alignment: 0.0,
              // How far into view the item should be scrolled (between 0 and 1).
              duration: const Duration(milliseconds: 800),
            );
          }
        }
        break;
    }
  }

  SliverPersistentHeader makeTabBarHeader() {
    TextStyle textStyle = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        fontFamily: GoogleFonts.roboto().fontFamily);
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
        minHeight: 50.0,
        maxHeight: 50.0,
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.search_outlined,
                size: 30,
              ),
              Flexible(
                flex: 1,
                child: TabBar(
                  onTap: (val) {
                    tabBarOnTap(val);
                  },
                  unselectedLabelColor: Colors.grey.shade700,
                  indicatorColor: Colors.red,
                  indicatorWeight: 2.0,
                  isScrollable: true,
                  labelColor: Colors.red,
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        "Picked for you",
                        style: textStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Bagels and Breads",
                        style: textStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Breakfast Specialty Sandwiches",
                        style: textStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Breakfast Specialty Sandwiches",
                        style: textStyle,
                      ),
                    ),
                  ],
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _topTabController.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.pin,
              background: BodyWidget(),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       Container(
          //         height: data.size.height / 5,
          //         color: Colors.black,
          //         child: GoogleMapWidget(height: data.size.height / 5),
          //       ),
          //     ],
          //   ),
          // ),
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            pinned: true,
            title: isPinned
                ? Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Lego's Bagels",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
            expandedHeight: 200.0,
            flexibleSpace: const FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              background: SubMenu(),
            ),
          ),
          if (isPinned) makeTabBarHeader(),
          SliverList(
            key: sliverListtKey,
            delegate: SliverChildListDelegate(
              [
                Container(
                  key: greenKey,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Egg SandWish",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Egg SandWish",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Egg SandWish",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Egg SandWish",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Egg SandWish",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Egg SandWish",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                ),
                Container(
                  key: blueKey,
                  color: Colors.white,
                  height: data.size.height / 1.4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bagels And Bread",
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade700,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Center(
                                        child: Text(
                                          "popular",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                    Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
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
                ),
                Container(
                  key: orangeKey,
                  color: Colors.white,
                  height: data.size.height / 1.4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Breakfast Specialty Sandwiches",
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade700,
                                          borderRadius:
                                          BorderRadius.circular(16)),
                                      child: Center(
                                        child: Text(
                                          "popular",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                ),
                Container(
                  key: yellowKey,
                  color: Colors.white,
                  height: data.size.height / 1.4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Breakfast Sandwiches",
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade700,
                                          borderRadius:
                                          BorderRadius.circular(16)),
                                      child: Center(
                                        child: Text(
                                          "popular",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                                trailing:
                                Image.asset("assets/images/bread.jpg"),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The BEGA",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "\$4.95",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Two eggs bacon,cheddar,avocado \nmash ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily:
                                          GoogleFonts.roboto().fontFamily,
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
                ),

                // BagelsAndBreadWidget(
                //   key: blueKey,
                //   title: " Bagels And Bread",
                // ),
                // BagelsAndBreadWidget(
                //   key: orangeKey,
                //   title: " Breakfast Specialty Sandwiches",
                // ),
                // BagelsAndBreadWidget(
                //   key: yellowKey,
                //   title: " Breakfast Sandwiches",
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
