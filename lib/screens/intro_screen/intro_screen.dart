import 'package:flutter/material.dart';
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
    slides.addAll(
      [
        IntroScreenPart(
          useProvidedChild: true,
          text: "Helll yeah!!!",
          image: 'assets/intro/first_slide.svg',
          providedChild: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Welcome to\n',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            TextSpan(
              text: 'LifeSync\n',
              style: MentalHealthTextStyles.text.signikaFontF24Green,
            ),
            TextSpan(
              text: 'our mental health app!\n',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
            TextSpan(
              text: 'We\'re glad to have you here.\n',
              style: MentalHealthTextStyles.text.signikaFontF24,
            ),
          ])),
        ),
        const IntroScreenPart(
          text: 'Discover more about yourself with our psychological tests.',
          image: 'assets/intro/second_slide.svg',
        ),
        const IntroScreenPart(
          text: 'Engage in daily meditation sessions.',
          image: 'assets/intro/third_slide.svg',
        ),
        const IntroScreenPart(
          text: "Receive personalized recommendations and tips.",
          image: 'assets/intro/forth_slide.svg',
        ),
      ],
    );
  }

  // void onDonePress() {
  //   context.replace('/initial_page');
  // }

  // void onSkipPress() {
  //   context.replace('/initial_page');
  // }

  @override
  Widget build(BuildContext context) {
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
          // onDonePress: onDonePress,
          // onSkipPress: onSkipPress,
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
}
