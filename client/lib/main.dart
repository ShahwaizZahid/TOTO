import 'package:client/auth/login_or_register.dart';
import 'package:client/models/restaurant.dart';
import 'package:client/pages/login_page.dart';
import 'package:client/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
 MultiProvider(providers: [
 //   theme provider
   ChangeNotifierProvider(
     create: (context) => ThemeProvider(),
   ),
   ChangeNotifierProvider(
     create: (context) => Restaurant(),
   ),
 ],
     child: MyApp(), // Replace MyApp with your main app widget
 )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themeData,
      home: const LoginOrRegister()
    );
  }
}
