
import 'package:assignment7/ui/utility/asset_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Column(
        children: [

          SvgPicture.asset(AssetPaths.backgroundsvg),

        ],
      ),

    );
  }
}
