import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/utils/styles/styles.dart';

class CategoryCardItem extends StatefulWidget {
  const CategoryCardItem({super.key});

  @override
  State<CategoryCardItem> createState() => _CategoryCardItemState();
}

class _CategoryCardItemState extends State<CategoryCardItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      width: 130,
      child: DecoratedBox(
        decoration: const BoxDecoration(
            // color: Colors.white,
            // borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 5,
              child: SizedBox(
                height: 70,
                width: 120,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 22, left: 8, right: 8, bottom: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Breathing 4-7-8",
                          style: MentalHealthTextStyles.text.mainCommonF16,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "3 min",
                          style: MentalHealthTextStyles.text.mainCommonF14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: 130,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: SvgPicture.asset(
                    'assets/backgrounds/card_backgound.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.heart_broken_rounded,
                color: Color(0xFFFF8B72),
              ),
            ),
            // Positioned(
            //   bottom: 10,
            //   right: 5,
            //   child: SizedBox(
            //     height: 50,
            //     width: 120,
            //     child: DecoratedBox(
            //       decoration: BoxDecoration(
            //         color: Colors.white.withOpacity(0.5),
            //         borderRadius: const BorderRadius.only(
            //           bottomLeft: Radius.circular(20),
            //           bottomRight: Radius.circular(20),
            //         ),
            //       ),
            //       child: Text("Blablalal"),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
