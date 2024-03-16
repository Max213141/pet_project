import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:life_sync/screens/intro_screen/widgets/widgets.dart';
import 'package:life_sync/utils/utils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<IntroScreenPart> slides = [];

  @override
  void initState() {
    super.initState();
  }

  void onDonePress() {
    context.replace('/initial_page');
  }

  void onSkipPress() {
    context.replace('/initial_page');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    createSlides(l10n);
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: IntroSlider(
          indicatorConfig: IndicatorConfig(
            sizeIndicator: 24,
            indicatorWidget: Container(
              width: 24,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColor.introButtonColor,
              ),
            ),
            activeIndicatorWidget: Container(
              width: 24,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColor.primaryBackgroundColor,
              ),
            ),
            spaceBetweenIndicator: 10,
            typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
          ),
          listCustomTabs: slides,
          onDonePress: onDonePress,
          onSkipPress: onSkipPress,
          doneButtonStyle:
              const ButtonStyle(splashFactory: NoSplash.splashFactory),
          nextButtonStyle:
              const ButtonStyle(splashFactory: NoSplash.splashFactory),
          renderNextBtn: const NextButton(),
          renderDoneBtn: const DoneButton(),
          isShowSkipBtn: false,
          isShowPrevBtn: false,
          // renderSkipBtn: this.renderSkipBtn(),
        ),
      ),
    );
  }

  createSlides(AppLocalizations l10n) {
    slides.addAll(
      [
        IntroScreenPart(
          useProvidedChild: true,
          text: "Hell yeah!!!",
          image: 'assets/intro/first_slide.svg',
          providedChild: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '${l10n.welcome}, \n',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            TextSpan(
              text: '${l10n.appTitle} \n',
              style: MentalHealthTextStyles.text.signikaFontF24Green,
            ),
            TextSpan(
              text: '${l10n.firstIntroSlidePart1} \n',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            TextSpan(
              text: '${l10n.firstIntroSlidePart2}',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
          ])),
        ),
        IntroScreenPart(
          text: l10n.secondIntroSlide,
          image: 'assets/intro/second_slide.svg',
        ),
        IntroScreenPart(
          text: l10n.thirdIntroSlide,
          image: 'assets/intro/third_slide.svg',
        ),
        IntroScreenPart(
          text: l10n.forthIntroSlide,
          image: 'assets/intro/forth_slide.svg',
        ),
      ],
    );
  }
}
