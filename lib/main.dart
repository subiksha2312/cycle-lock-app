import 'package:cyclelock_app/bindings/initial_binding.dart';
import 'package:cyclelock_app/widgets/pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init('Cache');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      initialRoute: '/main',
      getPages: getPages(),
    );
  }
}
