import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class SplashView extends HookWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );

    final animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    useEffect(() {
      animationController.forward();
      return () => animationController.dispose();
    }, []);

    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
              child: LayoutBuilder(
                builder: (ctx, constraints) {
                  return ScaleTransition(
                    scale: animation,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: constraints.maxHeight * 0.5,
                      width: constraints.maxWidth * 0.5,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
