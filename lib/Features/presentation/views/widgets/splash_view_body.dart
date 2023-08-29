import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Pages Unbound, Price Unfound',
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
