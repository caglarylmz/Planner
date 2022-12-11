import 'package:flutter/material.dart';
import 'package:planner/app/ui/widgets/loading_widget.dart';
import 'package:get/get.dart';
import 'package:planner/core/managers/route_manager/app_routes.dart';

///Splash View version control, network kontrol gibi programın ihtiyaç duyacağı olmazsa olmaz kontrollerin yapıldığı yer olmalıdır.
///Bu kontrolleri yazdığımız api'de kontrol ettirmeliyiz.
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future initializeSettings() {
    return Future.delayed(const Duration(seconds: 3),(){
      Get.offNamed(AppRoutes.home);
    });
  }

  @override
  void initState() {
    super.initState();
    initializeSettings();
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingWidget();
  }
}
