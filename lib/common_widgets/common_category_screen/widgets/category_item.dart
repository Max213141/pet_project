import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_project/utils/angle_curver.dart';
import 'package:pet_project/utils/decorations.dart';
import 'package:pet_project/utils/styles/styles.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      width: 125,
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
              height: 125,
              width: 125,
              child: ClipRRect(
                borderRadius: MentalHealthDecorations.borders.radiusC20,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/lotus.jpg'),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                width: 35,
                height: 35,
                child: CustomPaint(
                  painter: InvertedRoundedRectanglePainter(
                      radius: 20.0, color: Color(0xFFFFD7A6)),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD7A6),
                      borderRadius: MentalHealthDecorations.borders.radiusC10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5, left: 5),
                      child: Center(
                        child: Icon(
                          Icons.heart_broken_rounded,
                          color: Color(0xFFFF8B72),
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
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
