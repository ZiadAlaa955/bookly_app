import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/Widgets/sliding_animation.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    homeNavigation();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(
          image: AssetImage(AssetsData.logo),
        ),
        const SizedBox(
          height: 16,
        ),
        SlidingAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );
    _animationController.forward();
  }

  void homeNavigation() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(
          () => const HomeView(),
          transition: Transition.fade,
          duration: kTransitionDuration,
        );
      },
    );
  }
}
