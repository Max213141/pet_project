import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/common_widgets/category_card/widgets/category_card_item.dart';
import 'package:pet_project/utils/styles/styles.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        height: 235,
        width: MediaQuery.of(context).size.width - 32,
        child:
            // Center(
            //   child: Text("center"),
            // )

            ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/backgrounds/card_backgound.svg',
                fit: BoxFit.cover,
                // alignment: Alignment.center,
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Soothe anexity",
                            style:
                                MentalHealthTextStyles.text.mainTitleTextStyle,
                          ),
                          Text(
                            "See more >",
                            style: MentalHealthTextStyles.text.mainCommonF14,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CategoryCardItem(),
                          CategoryCardItem()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
