import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/common_widgets/bottom_navigation_bar.dart';
import 'package:pet_project/common_widgets/category_card/category_card.dart';
import 'package:pet_project/common_widgets/search_field.dart';
import 'package:pet_project/common_widgets/tag_tray/tag_tray.dart';

class BreathingPracticeScreen extends StatefulWidget {
  const BreathingPracticeScreen({super.key, required this.title});

  final String title;

  @override
  State<BreathingPracticeScreen> createState() =>
      _BreathingPracticeScreenState();
}

class _BreathingPracticeScreenState extends State<BreathingPracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).go('/main'),
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF373737),
            size: 24,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
          ),
        ),
        titleTextStyle: GoogleFonts.sansita(fontSize: 24, color: Colors.black),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      // bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
        ),
        child: Column(
          children: <Widget>[
            SearchField(),
            TagTray(),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryCard();
                  }),
            ),
            // CategoryCard(),
          ],
        ),
      ),
    );
  }
}
