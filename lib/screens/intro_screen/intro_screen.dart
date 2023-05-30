import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:pet_project/screens/intro_screen/widgets/intro_screen_part.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<IntroScreenPart> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      const IntroScreenPart(
        title: "Slide 1",
        description: "This is slide 1",
        color: Colors.blue,
      ),
    );
    slides.add(
      const IntroScreenPart(
        title: "Slide 2",
        description: "This is slide 2",
        color: Colors.red,
      ),
    );
    slides.add(
      const IntroScreenPart(
        title: "Slide 3",
        description: "This is slide 3",
        color: Colors.green,
      ),
    );
  }

  void onDonePress() {
    context.replace('/initial_page');
    // TODO: Navigate to the home screen
  }

  void onSkipPress() {
    context.replace('/initial_page');

    // TODO: Navigate to the home screen
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      color: Colors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      color: Colors.white,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        listCustomTabs: this.slides,
        onDonePress: this.onDonePress,
        onSkipPress: this.onSkipPress,
        renderNextBtn: this.renderNextBtn(),
        renderDoneBtn: this.renderDoneBtn(),
        renderSkipBtn: this.renderSkipBtn(),
      ),
    );
  }
}
