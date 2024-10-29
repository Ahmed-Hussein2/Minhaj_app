import 'package:flutter/material.dart';
import 'package:minhaj/constants.dart';
import 'package:minhaj/modules/azkar/azkar_details.dart';
import 'package:minhaj/widgets/zekr_tile.dart';

class Azkar extends StatefulWidget {
  const Azkar({super.key});

  @override
  State<Azkar> createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 40,
          bottom: 14,
        ),
        child: ListView(
          children: [
            const ZekrTile(
              zekrText: "ٱللَّهُ لَاۤ إِلَـٰهَ إِلَّا هُوَ ٱلۡحَیُّ ٱلۡقَيُّومُۚ لَا تَأۡخُذُهُۥ سِنَةࣱ وَلَا نَوۡمࣱۚ لَّهُۥ مَا فِی ٱلسَّمَـٰوَ ٰتِ وَمَا فِی ٱلۡأَرۡضِۗ مَن ذَا ٱلَّذِی يَشۡفَعُ عِندَهُۥۤ إِلَّا بِإِذۡنِهِۦۚ يَعۡلَمُ مَا بَيۡنَ أَيۡدِيهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا يُحِيطُونَ بِشَیۡءࣲ مِّنۡ عِلۡمِهِۦۤ إِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرۡسِيُّهُ ٱلسَّمَـٰوَ ٰتِ وَٱلۡأَرۡضَۖ وَلَا يَـُٔودُهُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِیُّ ٱلۡعَظِيمُ",
              repeat: 3,
              benfit: "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح",
            ),
            const SizedBox(height: 20),
            GestureDetector(
              // onTap: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const AzkarDetails(),
              //   ),
              // ),
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: primaryColor,
                  gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
                ),
                child: const Center(
                  child: Text(
                    "اذكار الصباح",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: primaryColor,
                  gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
                ),
                child: const Center(
                  child: Text(
                    "اذكار المساء",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: primaryColor,
                  gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
                ),
                child: const Center(
                  child: Text(
                    "اذكار بعد الصلاة",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: primaryColor,
                  gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
                ),
                child: const Center(
                  child: Text(
                    "اذكار النوم",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: primaryColor,
                  gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
                ),
                child: const Center(
                  child: Text(
                    "اذكار الإستقياظ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(  
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: primaryColor,
                  gradient: LinearGradient(colors: [Colors.teal, primaryColor]),
                ),
                child: const Center(
                  child: Text(
                    "ادعية قرآنية",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
