import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:travel_app_ui/app/modules/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          scrollBehavior:
              const MaterialScrollBehavior().copyWith(overscroll: false),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.transparent,
            ),
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
