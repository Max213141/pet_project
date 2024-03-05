import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life_sync/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackgroundColor,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColor.primaryColor, width: 4),
            ),
            child: Center(
              child: Text(
                'L\n S',

                // textAlign: TextAlign.center,
                style: GoogleFonts.signika(
                  fontSize: 68,
                  height: 48 / 34,
                  letterSpacing: -.5,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
