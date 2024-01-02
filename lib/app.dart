import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tubes_mobile/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tubes_mobile/utils/constants/text_strings.dart';
import 'package:tubes_mobile/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.homeAppbarSubTitle,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
    );
  }
}
