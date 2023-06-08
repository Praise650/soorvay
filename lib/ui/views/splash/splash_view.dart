import 'package:flutter/material.dart';

import '../selector/selector_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SelectorView(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurple],
          ),
        ),
        // color: Colors.red,
        alignment: Alignment.center,
        child: const Text(
          //TODO:add 'Welcome to Soorvay' to  app bar of homepage
          'Sorvaay',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 38,
          ),
        ),
      ),
    );
  }
}
