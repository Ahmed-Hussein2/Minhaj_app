import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:minhaj/constants.dart';
import 'package:minhaj/modules/azkar/azkar_home.dart';
import 'package:minhaj/modules/quran/index.dart';
import 'package:minhaj/widgets/hijri_calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    initializeDateFormatting();
    super.initState();
  }

  Map services = {
    "quran": "القرآن الكريم",
    "quran icon": "assets/quran.png",
    "azkar": "الأذكار",
    "azkar icon": "assets/sebha.jpg",
    "pray": "مواقيت الصلاة",
    "pray icon": "assets/pray.png",
    "hadith": "الأربعون النووية",
    "hadith icon": "assets/hadith.png",
    "tafseer": "تفسير القرآن الكريم",
    "tafseer icon": "assets/tafseer.png",
  };

  @override
  Widget build(BuildContext context) {
    HijriCalendar.setLocal("ar");
    final hijri = HijriCalendar.now();
    final day = DateTime.now();
    String formattedDate = DateFormat('yyyy MM dd').format(day);
    String arabicMonthName = DateFormat.MMMM("ar").format(DateTime.now());
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light),
        title: const Text(
          "منهاج",
          style: TextStyle(
            fontSize: 33,
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  customDivider(),
                  const SizedBox(height: 10),
                  Container(
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage("assets/background_img.jpg"),
                        fit: BoxFit.fitWidth,
                        colorFilter:
                            ColorFilter.mode(primaryColor, BlendMode.color),
                        opacity: 0.5,
                      ),
                      gradient:
                          LinearGradient(colors: [secondColor, primaryColor]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Text(
                                      "${hijri.hYear.toString()} ",
                                      style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  WidgetSpan(
                                      child: Text(
                                    "${hijri.longMonthName.toString()} ",
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                                  WidgetSpan(
                                    child: Text(
                                      hijri.hDay.toString(),
                                      style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Text(
                                      " ${hijri.dayWeName.toString()}",
                                      style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Text(
                                  day.year.toString(),
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              WidgetSpan(
                                  child: Text(
                                arabicMonthName,
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              WidgetSpan(
                                child: Text(
                                  day.day.toString(),
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: const AssetImage("assets/Palestine.png"),
                        opacity: 0.5,
                        alignment: Alignment.center,
                        fit: BoxFit.fitWidth,
                        colorFilter:
                            ColorFilter.mode(primaryColor, BlendMode.darken),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "لا تنسوا الدعاء\n🇵🇸 لإخواننا في فلسطين",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  customDivider(),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 395,
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      shrinkWrap: true,
                      mainAxisSpacing: 20,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Azkar(),
                                ));
                          },
                          child: GridTile(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: primaryColor.withOpacity(0.75),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/icons/sebha.ico",
                                      height: 100, width: 100),
                                  const Text(
                                    "الأذكار",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const IndexPage()));
                          },
                          child: GridTile(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: primaryColor.withOpacity(0.75),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/icons/quran.ico",
                                      height: 100, width: 100),
                                  const Text(
                                    "القرآن الكريم",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GridTile(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: primaryColor.withOpacity(0.75),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/icons/tafseer.ico",
                                    height: 100, width: 100),
                                const Text(
                                  "تفسير القرآن الكريم",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GridTile(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              // gradient: LinearGradient(
                              //     begin: Alignment.bottomRight,
                              //     end: Alignment.centerLeft,
                              //     colors: [secondColor, primaryColor]),
                              color: primaryColor.withOpacity(0.75),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/icons/hadith.ico",
                                    height: 100, width: 100),
                                const Text(
                                  "الأربعين النووية",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        circle(),
        Expanded(child: line()),
        circle(),
        Expanded(child: line()),
        circle(),
      ],
    );
  }

  Widget circle() {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(color: primaryColor, width: 3),
      ),
    );
  }

  Widget line() {
    return Container(
      height: 2.5,
      color: Colors.teal,
    );
  }
}
