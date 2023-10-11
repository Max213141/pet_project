import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_project/screens/breathing_screen/widgets/widgets.dart';
import 'package:pet_project/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'category_card');

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        height: 235,
        width: MediaQuery.of(context).size.width - 32,
        child:
            // Center(
            //   child: Text("center"),
            // )

            ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: GestureDetector(
            onTap: () {
              _log('pressed navigation on card');
              GoRouter.of(context).go('/main/breathing/breathing_items');
            },
            //  () => showDialog(
            //   context: context,
            //   builder: (
            //     BuildContext context,
            //   ) =>
            //       Center(
            //     child: SizedBox(
            //       height: 100,
            //       width: 100,
            //       child: DecoratedBox(
            //         decoration: BoxDecoration(
            //           border: MentalHealthDecorations.borders.coloredSmall,
            //           borderRadius: MentalHealthDecorations.borders.radiusC10,
            //           color: Colors.white,
            //         ),
            //         child: Text('First child'),
            //       ),
            //     ),
            //   ),
            // ),
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
                              style: MentalHealthTextStyles.text.mainCommonF18,
                            ),
                            Text(
                              "See more >",
                              style: MentalHealthTextStyles.text.mainCommonF14,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => showModalBottomSheet(
                              useSafeArea: true,
                              showDragHandle: true,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return const CategoryItemBottomSheetBody();
                              },
                            ),

                            // () => GoRouter.of(context)
                            //     .go('/main/breathing/breathing_item_screen'),
                            child: const CategoryItem(),
                          ),
                          const CategoryItem()
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
