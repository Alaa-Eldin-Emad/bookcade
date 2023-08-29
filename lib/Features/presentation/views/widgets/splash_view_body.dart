import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> rightSlidingAnimation;
  late Animation<Offset> leftSlidingAnimation;
  @override
  void initState() {
    super.initState();
    slidingAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilder(
              animation: rightSlidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                    position: rightSlidingAnimation,
                    child: Image.asset(AssetsData.logo));
              }),
          const SizedBox(
            height: 5,
          ),
          AnimatedBuilder(
              animation: leftSlidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                  position: leftSlidingAnimation,
                  child: Text(
                    'Pages Unbound, Price Unfound',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSerifDisplay(
                        textStyle: const TextStyle(fontSize: 24)),
                  ),
                );
              }),
        ],
      ),
    );
  }

  void slidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    rightSlidingAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(animationController);
    leftSlidingAnimation =
        Tween<Offset>(begin: const Offset(-2, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
