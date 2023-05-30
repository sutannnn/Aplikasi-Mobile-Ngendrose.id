import 'package:flutter_application_1/dashboard/home.dart';
import 'package:flutter_application_1/dashboard/provider.dart';
import 'package:flutter_application_1/onboarding/signup2.dart';
import 'package:flutter_application_1/onboarding/start.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
      ],
      child: const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Start();
  }
}
