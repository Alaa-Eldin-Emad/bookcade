import 'package:bookcade/Features/Home/presentation/views/home.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/assets.dart';

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
    homeNavigation();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
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
                  child: const Text(
                    'Pages Unbound, Price Unfound',
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 24),
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
   void homeNavigation() {
    Future.delayed(const Duration(seconds: 2),(){Get.to(()=> const HomeView(),transition: Transition.fade,duration: transtionsDuration);});
  }
}
