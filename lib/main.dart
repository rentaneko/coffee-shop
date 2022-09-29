import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:skincare_app/share/constants/value.constant.dart';
import 'package:skincare_app/share/routes/pages.dart';
import 'package:skincare_app/share/routes/routers.dart';
import 'package:skincare_app/share/styles/coffee.color.dart';
import 'package:skincare_app/share/styles/coffee.theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: API_URL,
    anonKey: API_ANON_KEY,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Skincare App',
      debugShowCheckedModeBanner: false,
      theme: CoffeeTheme().lighTheme,
      darkTheme: CoffeeTheme().darkTheme,
      getPages: Routers.routers,
      initialRoute: ROUTER_SPLASH,
    );
  }
}
